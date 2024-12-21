// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec 12 16:57:02 2024
// Host        : DESKTOP-PM7M19D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Workspace/2024-2/soc/final_project/matmul_vivado/matmul_vivado.gen/sources_1/bd/design_1/ip/design_1_FND_Encoder_0_0/design_1_FND_Encoder_0_0_sim_netlist.v
// Design      : design_1_FND_Encoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_FND_Encoder_0_0,FND_Encoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "FND_Encoder,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_FND_Encoder_0_0
   (clk_in,
    reset_n,
    flag,
    seg_out,
    com_out);
  input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input flag;
  output [7:0]seg_out;
  output [3:0]com_out;

  wire \<const0> ;
  wire \<const1> ;
  wire clk_in;
  wire [1:0]\^com_out ;
  wire flag;
  wire reset_n;
  wire [6:1]\^seg_out ;

  assign com_out[3] = \<const1> ;
  assign com_out[2] = \<const1> ;
  assign com_out[1:0] = \^com_out [1:0];
  assign seg_out[7] = \^seg_out [2];
  assign seg_out[6] = \^seg_out [6];
  assign seg_out[5] = \^seg_out [6];
  assign seg_out[4] = \^seg_out [6];
  assign seg_out[3] = \^seg_out [2];
  assign seg_out[2:1] = \^seg_out [2:1];
  assign seg_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_FND_Encoder_0_0_FND_Encoder inst
       (.clk_in(clk_in),
        .com_cnt_reg_0(\^com_out [0]),
        .com_out(\^com_out [1]),
        .flag(flag),
        .reset_n(reset_n),
        .seg_out({\^seg_out [2],\^seg_out [6],\^seg_out [1]}));
endmodule

(* ORIG_REF_NAME = "FND_Encoder" *) 
module design_1_FND_Encoder_0_0_FND_Encoder
   (seg_out,
    com_cnt_reg_0,
    com_out,
    clk_in,
    flag,
    reset_n);
  output [2:0]seg_out;
  output com_cnt_reg_0;
  output [0:0]com_out;
  input clk_in;
  input flag;
  input reset_n;

  wire clk_in;
  wire [16:0]cnt;
  wire [16:1]cnt0;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[10]_i_1_n_0 ;
  wire \cnt[11]_i_1_n_0 ;
  wire \cnt[12]_i_1_n_0 ;
  wire \cnt[13]_i_1_n_0 ;
  wire \cnt[14]_i_1_n_0 ;
  wire \cnt[15]_i_1_n_0 ;
  wire \cnt[16]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[7]_i_1_n_0 ;
  wire \cnt[8]_i_1_n_0 ;
  wire \cnt[9]_i_1_n_0 ;
  wire \cnt_reg[16]_i_2_n_1 ;
  wire \cnt_reg[16]_i_2_n_2 ;
  wire \cnt_reg[16]_i_2_n_3 ;
  wire \cnt_reg[16]_i_2_n_4 ;
  wire \cnt_reg[16]_i_2_n_5 ;
  wire \cnt_reg[16]_i_2_n_6 ;
  wire \cnt_reg[16]_i_2_n_7 ;
  wire \cnt_reg[8]_i_2_n_0 ;
  wire \cnt_reg[8]_i_2_n_1 ;
  wire \cnt_reg[8]_i_2_n_2 ;
  wire \cnt_reg[8]_i_2_n_3 ;
  wire \cnt_reg[8]_i_2_n_4 ;
  wire \cnt_reg[8]_i_2_n_5 ;
  wire \cnt_reg[8]_i_2_n_6 ;
  wire \cnt_reg[8]_i_2_n_7 ;
  wire com_cnt_i_1_n_0;
  wire com_cnt_i_2_n_0;
  wire com_cnt_reg_0;
  wire [0:0]com_out;
  wire flag;
  wire reset_n;
  wire [2:0]seg_out;
  wire [7:7]\NLW_cnt_reg[16]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[16]),
        .I1(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[10]_i_1 
       (.I0(cnt0[10]),
        .I1(cnt[16]),
        .O(\cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[11]_i_1 
       (.I0(cnt0[11]),
        .I1(cnt[16]),
        .O(\cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[12]_i_1 
       (.I0(cnt0[12]),
        .I1(cnt[16]),
        .O(\cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[13]_i_1 
       (.I0(cnt0[13]),
        .I1(cnt[16]),
        .O(\cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[14]_i_1 
       (.I0(cnt0[14]),
        .I1(cnt[16]),
        .O(\cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[15]_i_1 
       (.I0(cnt0[15]),
        .I1(cnt[16]),
        .O(\cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[16]_i_1 
       (.I0(cnt0[16]),
        .I1(cnt[16]),
        .O(\cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[1]_i_1 
       (.I0(cnt0[1]),
        .I1(cnt[16]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[2]_i_1 
       (.I0(cnt0[2]),
        .I1(cnt[16]),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[3]_i_1 
       (.I0(cnt0[3]),
        .I1(cnt[16]),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[4]_i_1 
       (.I0(cnt0[4]),
        .I1(cnt[16]),
        .O(\cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[5]_i_1 
       (.I0(cnt0[5]),
        .I1(cnt[16]),
        .O(\cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[6]_i_1 
       (.I0(cnt0[6]),
        .I1(cnt[16]),
        .O(\cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[7]_i_1 
       (.I0(cnt0[7]),
        .I1(cnt[16]),
        .O(\cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[8]_i_1 
       (.I0(cnt0[8]),
        .I1(cnt[16]),
        .O(\cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[9]_i_1 
       (.I0(cnt0[9]),
        .I1(cnt[16]),
        .O(\cnt[9]_i_1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]));
  FDCE \cnt_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[10]_i_1_n_0 ),
        .Q(cnt[10]));
  FDCE \cnt_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[11]_i_1_n_0 ),
        .Q(cnt[11]));
  FDCE \cnt_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[12]_i_1_n_0 ),
        .Q(cnt[12]));
  FDCE \cnt_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[13]_i_1_n_0 ),
        .Q(cnt[13]));
  FDCE \cnt_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[14]_i_1_n_0 ),
        .Q(cnt[14]));
  FDCE \cnt_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[15]_i_1_n_0 ),
        .Q(cnt[15]));
  FDCE \cnt_reg[16] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[16]_i_1_n_0 ),
        .Q(cnt[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \cnt_reg[16]_i_2 
       (.CI(\cnt_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_cnt_reg[16]_i_2_CO_UNCONNECTED [7],\cnt_reg[16]_i_2_n_1 ,\cnt_reg[16]_i_2_n_2 ,\cnt_reg[16]_i_2_n_3 ,\cnt_reg[16]_i_2_n_4 ,\cnt_reg[16]_i_2_n_5 ,\cnt_reg[16]_i_2_n_6 ,\cnt_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[16:9]),
        .S(cnt[16:9]));
  FDCE \cnt_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt[4]));
  FDCE \cnt_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(cnt[5]));
  FDCE \cnt_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[6]_i_1_n_0 ),
        .Q(cnt[6]));
  FDCE \cnt_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[7]_i_1_n_0 ),
        .Q(cnt[7]));
  FDCE \cnt_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[8]_i_1_n_0 ),
        .Q(cnt[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \cnt_reg[8]_i_2 
       (.CI(cnt[0]),
        .CI_TOP(1'b0),
        .CO({\cnt_reg[8]_i_2_n_0 ,\cnt_reg[8]_i_2_n_1 ,\cnt_reg[8]_i_2_n_2 ,\cnt_reg[8]_i_2_n_3 ,\cnt_reg[8]_i_2_n_4 ,\cnt_reg[8]_i_2_n_5 ,\cnt_reg[8]_i_2_n_6 ,\cnt_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[8:1]),
        .S(cnt[8:1]));
  FDCE \cnt_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(\cnt[9]_i_1_n_0 ),
        .Q(cnt[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    com_cnt_i_1
       (.I0(cnt[16]),
        .I1(com_cnt_reg_0),
        .O(com_cnt_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    com_cnt_i_2
       (.I0(reset_n),
        .O(com_cnt_i_2_n_0));
  FDCE com_cnt_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(com_cnt_i_2_n_0),
        .D(com_cnt_i_1_n_0),
        .Q(com_cnt_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \com_out[1]_INST_0 
       (.I0(com_cnt_reg_0),
        .O(com_out));
  design_1_FND_Encoder_0_0_ovf2seg ovf2seg_0
       (.flag(flag),
        .seg_out(seg_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg_out[1]_INST_0 
       (.I0(seg_out[2]),
        .I1(com_cnt_reg_0),
        .O(seg_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \seg_out[4]_INST_0 
       (.I0(com_cnt_reg_0),
        .I1(seg_out[2]),
        .O(seg_out[1]));
endmodule

(* ORIG_REF_NAME = "ovf2seg" *) 
module design_1_FND_Encoder_0_0_ovf2seg
   (seg_out,
    flag);
  output [0:0]seg_out;
  input flag;

  wire flag;
  wire \seg1_data_reg[7]_i_1_n_0 ;
  wire [0:0]seg_out;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \seg1_data_reg[7] 
       (.CLR(\seg1_data_reg[7]_i_1_n_0 ),
        .D(1'b1),
        .G(flag),
        .GE(1'b1),
        .Q(seg_out));
  LUT1 #(
    .INIT(2'h1)) 
    \seg1_data_reg[7]_i_1 
       (.I0(flag),
        .O(\seg1_data_reg[7]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
