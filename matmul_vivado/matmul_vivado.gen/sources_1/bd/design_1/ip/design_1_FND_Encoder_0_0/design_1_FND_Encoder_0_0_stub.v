// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec 12 16:57:02 2024
// Host        : DESKTOP-PM7M19D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Workspace/2024-2/soc/final_project/matmul_vivado/matmul_vivado.gen/sources_1/bd/design_1/ip/design_1_FND_Encoder_0_0/design_1_FND_Encoder_0_0_stub.v
// Design      : design_1_FND_Encoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "FND_Encoder,Vivado 2022.2" *)
module design_1_FND_Encoder_0_0(clk_in, reset_n, flag, seg_out, com_out)
/* synthesis syn_black_box black_box_pad_pin="clk_in,reset_n,flag,seg_out[7:0],com_out[3:0]" */;
  input clk_in;
  input reset_n;
  input flag;
  output [7:0]seg_out;
  output [3:0]com_out;
endmodule
