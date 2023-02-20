/*
 * File Name:         hdl_prj\ipcore\Tx_Signal_ip_v1_0\include\Tx_Signal_ip_addr.h
 * Description:       C Header File
 * Created:           2023-02-16 15:23:50
*/

#ifndef TX_SIGNAL_IP_H_
#define TX_SIGNAL_IP_H_

#define  IPCore_Reset_Tx_Signal_ip                           0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_Tx_Signal_ip                          0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_PacketSize_AXI4_Stream_Master_Tx_Signal_ip   0x8  //Packet size for AXI4-Stream Master interface, the default value is 1024. The TLAST output signal of the AXI4-Stream Master interface is generated based on the packet size.
#define  IPCore_Timestamp_Tx_Signal_ip                       0xC  //contains unique IP timestamp (yymmddHHMM): 2302161523

#endif /* TX_SIGNAL_IP_H_ */
