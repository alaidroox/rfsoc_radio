/*
 * File Name:         hdl_prj\ipcore\tx_mod_ip_v0_1\include\tx_mod_ip_addr.h
 * Description:       C Header File
 * Created:           2023-02-16 14:09:43
*/

#ifndef TX_MOD_IP_H_
#define TX_MOD_IP_H_

#define  IPCore_Reset_tx_mod_ip                           0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_tx_mod_ip                          0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_PacketSize_AXI4_Stream_Master_tx_mod_ip   0x8  //Packet size for AXI4-Stream Master interface, the default value is 1024. The TLAST output signal of the AXI4-Stream Master interface is generated based on the packet size.
#define  IPCore_Timestamp_tx_mod_ip                       0xC  //contains unique IP timestamp (yymmddHHMM): 2302161409

#endif /* TX_MOD_IP_H_ */
