// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec 11 12:53:34 2024
// Host        : DESKTOP-PM7M19D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_axi_lite_template_top_0_0 -prefix
//               design_1_axi_lite_template_top_0_0_ design_1_axi_lite_template_top_0_0_stub.v
// Design      : design_1_axi_lite_template_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_lite_template_top,Vivado 2022.2" *)
module design_1_axi_lite_template_top_0_0(s00_axi_aclk, s00_axi_aresetn, 
  s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, 
  s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, 
  s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, 
  s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, reg0, reg1, reg2, reg3, reg4, reg5, 
  reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, rdonly_reg0, rdonly_reg1, rdonly_reg2, 
  rdonly_reg3, rdonly_reg4, rdonly_reg5, rdonly_reg6, rdonly_reg7, rdonly_reg8, rdonly_reg9, 
  rdonly_reg10, rdonly_reg11, rdonly_reg12, rdonly_reg13, rdonly_reg14, rdonly_reg15)
/* synthesis syn_black_box black_box_pad_pin="s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[31:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[31:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,reg0[31:0],reg1[31:0],reg2[31:0],reg3[31:0],reg4[31:0],reg5[31:0],reg6[31:0],reg7[31:0],reg8[31:0],reg9[31:0],reg10[31:0],reg11[31:0],reg12[31:0],reg13[31:0],reg14[31:0],reg15[31:0],rdonly_reg0[31:0],rdonly_reg1[31:0],rdonly_reg2[31:0],rdonly_reg3[31:0],rdonly_reg4[31:0],rdonly_reg5[31:0],rdonly_reg6[31:0],rdonly_reg7[31:0],rdonly_reg8[31:0],rdonly_reg9[31:0],rdonly_reg10[31:0],rdonly_reg11[31:0],rdonly_reg12[31:0],rdonly_reg13[31:0],rdonly_reg14[31:0],rdonly_reg15[31:0]" */;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [31:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [31:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  output [31:0]reg0;
  output [31:0]reg1;
  output [31:0]reg2;
  output [31:0]reg3;
  output [31:0]reg4;
  output [31:0]reg5;
  output [31:0]reg6;
  output [31:0]reg7;
  output [31:0]reg8;
  output [31:0]reg9;
  output [31:0]reg10;
  output [31:0]reg11;
  output [31:0]reg12;
  output [31:0]reg13;
  output [31:0]reg14;
  output [31:0]reg15;
  input [31:0]rdonly_reg0;
  input [31:0]rdonly_reg1;
  input [31:0]rdonly_reg2;
  input [31:0]rdonly_reg3;
  input [31:0]rdonly_reg4;
  input [31:0]rdonly_reg5;
  input [31:0]rdonly_reg6;
  input [31:0]rdonly_reg7;
  input [31:0]rdonly_reg8;
  input [31:0]rdonly_reg9;
  input [31:0]rdonly_reg10;
  input [31:0]rdonly_reg11;
  input [31:0]rdonly_reg12;
  input [31:0]rdonly_reg13;
  input [31:0]rdonly_reg14;
  input [31:0]rdonly_reg15;
endmodule
