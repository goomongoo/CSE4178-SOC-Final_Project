//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Dec 18 13:11:51 2024
//Host        : DESKTOP-PM7M19D running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (com_out_0,
    seg_out_0);
  output [3:0]com_out_0;
  output [7:0]seg_out_0;

  wire [3:0]com_out_0;
  wire [7:0]seg_out_0;

  design_1 design_1_i
       (.com_out_0(com_out_0),
        .seg_out_0(seg_out_0));
endmodule
