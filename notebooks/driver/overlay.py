from pynq import Overlay
from pynq import allocate
import xrfclk
import xrfdc
import os
import numpy as np
import ipywidgets as ipw
import time

# Import overlay specific drivers
from .quick_widgets import Button, TransmitTerminal, ReceiveTerminal
from .receiver import Receiver
from .transmitter import Transmitter
from .data_inspector import DataInspector, DataInspectorCore
from .switch import Switch

class RadioMLOverlay(Overlay):
    
    def __init__(self, bitfile_name=None, init_rf_clks=True, **kwargs): # + run_test=True, debug_test=False
        
        # Generate default bitfile name
        if bitfile_name is None:
            this_dir = os.path.dirname(__file__)
            bitfile_name = os.path.join(this_dir, 'bitstream', 'rfsoc_radio.bit')
            
        # Create Overlay
        super().__init__(bitfile_name, ignore_version=True, **kwargs)  # driver does not yet list RF-DAC version 2.6 as supported

        # Initialise I2C
        #self.init_i2c()
        
        '''
        # Start up LMX clock
        lmk_clk = 245.76
        if init_rf_clks:
            xrfclk.set_ref_clks(lmk_clk, 409.6)
            time.sleep(1)
        '''

        # Start up LMX clock
        if init_rf_clks:
            xrfclk.set_ref_clks()

        # Extract friendly dataconverter names
        self.rf = self.usp_rf_data_converter
        self.dac_tile = self.rf.dac_tiles[1]
        self.dac_block = self.dac_tile.blocks[0]
        self.adc_tile = self.rf.adc_tiles[2]
        self.adc_block = self.adc_tile.blocks[0]

        # Set DAC defaults
        self.dac_tile.DynamicPLLConfig(1, 409.6, 1024)
        self.dac_block.NyquistZone = 1
        self.dac_block.MixerSettings = {
            'CoarseMixFreq'  : xrfdc.COARSE_MIX_BYPASS,
            'EventSource'    : xrfdc.EVNT_SRC_IMMEDIATE,
            'FineMixerScale' : xrfdc.MIXER_SCALE_1P0,
            'Freq'           : 64,
            'MixerMode'      : xrfdc.MIXER_MODE_C2R,
            'MixerType'      : xrfdc.MIXER_TYPE_FINE,
            'PhaseOffset'    : 0.0
        }
        self.dac_block.UpdateEvent(xrfdc.EVENT_MIXER)
        self.dac_tile.SetupFIFO(True)
        
        # Set ADC defaults
        self.adc_tile.DynamicPLLConfig(1, 409.6, 1024)
        self.adc_block.NyquistZone = 1
        self.adc_block.MixerSettings = {
            'CoarseMixFreq'  : xrfdc.COARSE_MIX_BYPASS,
            'EventSource'    : xrfdc.EVNT_SRC_TILE,
            'FineMixerScale' : xrfdc.MIXER_SCALE_1P0,
            'Freq'           : 64,
            'MixerMode'      : xrfdc.MIXER_MODE_R2C,
            'MixerType'      : xrfdc.MIXER_TYPE_FINE,
            'PhaseOffset'    : 0.0
        }
        self.adc_block.UpdateEvent(xrfdc.EVENT_MIXER)
        self.adc_tile.SetupFIFO(True)
        
         # The receiver is coupled with an inspector
        self.radio_receiver = Receiver(self.axi_dma_rx, self.receiver, self.DataInspectorRx)
        
        # Receiver setup requirements - pull resets low
        self.radio_receiver.controller.coarse_passthrough = 0
        self.radio_receiver.controller.reset_time_sync = 0
        self.radio_receiver.controller.reset_phase_sync = 0
        self.radio_receiver.controller.reset_frame_sync = 0
        self.radio_receiver.controller.global_reset_sync = 0
        
        # The transmitter is coupled with an inspector
        self.radio_transmitter = Transmitter(self.axi_dma_tx, self.transmitter, self.DataInspectorTx)

        self.radio_receiver.controller.modulation = 1
        self.radio_transmitter.controller.modulation = 1
        self.radio_receiver.monitor.start()

        ###
    def dashboard(self):
    
        def dashboard_callback(value, button_id = 0):
            if button_id == 0:
                self.radio_transmitter.controller.enable_transmitter = int(value)
            elif button_id == 1:
                self.radio_receiver.controller.coarse_passthrough = int(not value)
            elif button_id == 2:
                self.radio_receiver.controller.reset_time_sync = int(not value)
            elif button_id == 3:
                self.radio_receiver.controller.reset_phase_sync = int(not value)
            elif button_id == 4:
                self.radio_receiver.controller.reset_frame_sync = int(not value)
            else:
                pass

        def adc_callback(change):
            self.radio_receiver.controller.global_reset_sync = 1
            self.adc_block.MixerSettings["Freq"] = -change['new']
            self.adc_block.UpdateEvent(xrfdc.EVENT_MIXER)
            self.radio_receiver.controller.global_reset_sync = 0
            time.sleep(0.1)
            freq_label.value = 'Reported Frequency Offset: ' + \
                                str(self.radio_receiver.controller.freq_offset)
            
        def dac_callback(change):
            self.radio_receiver.controller.global_reset_sync = 1
            self.dac_block.MixerSettings["Freq"] = change['new']
            self.dac_block.UpdateEvent(xrfdc.EVENT_MIXER)
            self.radio_receiver.controller.global_reset_sync = 0
            time.sleep(0.1)
            freq_label.value = 'Reported Frequency Offset: ' + \
                                str(self.radio_receiver.controller.freq_offset)
            
        def modulation_callback(change):
            self.radio_receiver.controller.global_reset_sync = 1
            if change['new'] == 'BPSK':
                self.radio_transmitter.controller.modulation = 0
                self.radio_receiver.controller.modulation = 0
            elif change['new'] == 'QPSK':
                self.radio_transmitter.controller.modulation = 1
                self.radio_receiver.controller.modulation = 1
            elif change['new'] == '8PSK':
                self.radio_transmitter.controller.modulation = 2
                self.radio_receiver.controller.modulation = 2
            elif change['new'] == '16QAM':
                self.radio_transmitter.controller.modulation = 3
                self.radio_receiver.controller.modulation = 3
            elif change['new'] == '32QAM':
                self.radio_transmitter.controller.modulation = 4
                self.radio_receiver.controller.modulation = 4
            elif change['new'] == '64QAM':
                self.radio_transmitter.controller.modulation = 5
                self.radio_receiver.controller.modulation = 5
            elif change['new'] == '128QAM':
                self.radio_transmitter.controller.modulation = 6
                self.radio_receiver.controller.modulation = 6
            elif change['new'] == '256QAM':
                self.radio_transmitter.controller.modulation = 7
                self.radio_receiver.controller.modulation = 7
            elif change['new'] == '512QAM':
                self.radio_transmitter.controller.modulation = 8
                self.radio_receiver.controller.modulation = 8
            else:
                self.radio_transmitter.controller.modulation = 9
                self.radio_receiver.controller.modulation = 9
            self.radio_receiver.controller.global_reset_sync = 0


        # Create button descriptions
        desc_b = ['Transmit Enable', 
                'Coarse Sync', 
                'Time Sync', 
                'Carrier Sync', 
                'Frame Sync']
        
        buttons = [None]*5

        # Create buttons
        for i in range(5):
            buttons[i] = Button(description=desc_b[i],
                                state=True,
                                callback=dashboard_callback,
                                button_id=i)
            
        # Create float text objects for entering the ADC & DAC mixer frequencies
        adc_fc = ipw.FloatText(
            value=np.round(-self.adc_block.MixerSettings["Freq"], 3),
            description='ADC Frequency (MHz):',
            style={'description_width': 'initial'},
            disabled=False
        )
        dac_fc = ipw.FloatText(
            value=np.round(self.dac_block.MixerSettings["Freq"], 3),
            description='DAC Frequency (MHz):',
            style={'description_width': 'initial'},
            disabled=False
        )
        adc_fc.observe(adc_callback, names='value')
        dac_fc.observe(dac_callback, names='value')
        
        # Create dropdown object for modulation selection
        mod_dd = ipw.Dropdown(
            value='QPSK',
            options=['BPSK', 'QPSK', '8PSK', '16QAM', '32QAM', '64QAM', '128QAM', '256QAM', '512QAM', '1024QAM'],
            description='Modulation:',
            style={'description_width': 'initial'},
            disabled=False
        )
        mod_dd.observe(modulation_callback, names='value')

        layout = ipw.Layout(display='inline-flex',
                justify_content='flex-start',
                align_items='flex-start',
                align_content='flex-start')
        
        freq_label =  ipw.Label('Reported Frequency Offset: ' + \
                                str(self.radio_receiver.controller.freq_offset) + \
                                    ' Hz')

        button_container = ipw.VBox([ipw.HBox([buttons[1].get_widget(), buttons[2].get_widget()]),
                            ipw.HBox([buttons[3].get_widget(), buttons[4].get_widget()])])

        dashboard = ipw.VBox(children=[
                        ipw.HBox(children=[dac_fc,
                                            buttons[0].get_widget()],
                                layout=layout),
                        ipw.HBox(children=[adc_fc,
                                            button_container], 
                                layout=layout),
                        ipw.HBox(children=[mod_dd],
                                layout=layout),
                                freq_label
                                ],
                        layout=layout
                    )

        dashboard_accordion = ipw.Accordion(children=[dashboard])
        dashboard_accordion.set_title(0, 'System Control')
        
        return dashboard_accordion

    def _radio_generator(self):
        sidebar = ipw.VBox([self.dashboard(), self.radio_receiver.visualise()])
        msgbar = ipw.VBox([self.radio_transmitter.terminal(), self.radio_receiver.terminal()])
        return ipw.HBox([sidebar, msgbar])

    def radio_application(self):
        return self._radio_generator()