`timescale 1ns / 1ps
/*
	register table (byte addressed)
	   base_address		offset			field 
	   0x0000			0x0			
	   0x0000			0x			
	   0x0000			0x			
	   0x0000			0x			
	   0x0000			0x			
	   0x0000			0x			

*/	
	module axi_lite_template_top #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_AXI_ADDR_WIDTH	= 32

		// Parameters of Axi Master Bus Interface M00_AXI.. for master AXI
		// parameter  C_M_AXI_START_DATA_VALUE	= 32'hAA000000,
		// parameter  C_M_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		// parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// parameter integer C_M_AXI_DATA_WIDTH	= 32,
		// parameter integer C_M_AXI_TRANSACTIONS_NUM	= 4
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
(* DONT_TOUCH = "TRUE" *) input wire  s00_axi_aclk,
(* DONT_TOUCH = "TRUE" *) input wire  s00_axi_aresetn,
(* DONT_TOUCH = "TRUE" *) input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
(* DONT_TOUCH = "TRUE" *) input wire [2 : 0] s00_axi_awprot,
(* DONT_TOUCH = "TRUE" *) input wire  s00_axi_awvalid,
(* DONT_TOUCH = "TRUE" *) output wire  s00_axi_awready,
(* DONT_TOUCH = "TRUE" *) input wire [C_S_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
(* DONT_TOUCH = "TRUE" *) input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
(* DONT_TOUCH = "TRUE" *) input wire  s00_axi_wvalid,
(* DONT_TOUCH = "TRUE" *) output wire  s00_axi_wready,
(* DONT_TOUCH = "TRUE" *) output wire [1 : 0] s00_axi_bresp,
(* DONT_TOUCH = "TRUE" *) output wire  s00_axi_bvalid,
(* DONT_TOUCH = "TRUE" *) input wire  s00_axi_bready,
(* DONT_TOUCH = "TRUE" *) input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
(* DONT_TOUCH = "TRUE" *) input wire [2 : 0] s00_axi_arprot,
(* DONT_TOUCH = "TRUE" *) input wire  s00_axi_arvalid,
(* DONT_TOUCH = "TRUE" *) output wire  s00_axi_arready,
(* DONT_TOUCH = "TRUE" *) output wire [C_S_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
(* DONT_TOUCH = "TRUE" *) output wire [1 : 0] s00_axi_rresp,
(* DONT_TOUCH = "TRUE" *) output wire  s00_axi_rvalid,
(* DONT_TOUCH = "TRUE" *) input wire  s00_axi_rready,

		// Ports of Axi Master Bus Interface M00_AXI
		// input wire  m00_axi_init_axi_txn,
		// output wire  m00_axi_error,
		// output wire  m00_axi_txn_done,
		// input wire  m00_axi_aclk,
		// input wire  m00_axi_aresetn,
		// output wire [C_M_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
		// output wire [2 : 0] m00_axi_awprot,
		// output wire  m00_axi_awvalid,
		// input wire  m00_axi_awready,
		// output wire [C_M_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		// output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
		// output wire  m00_axi_wvalid,
		// input wire  m00_axi_wready,
		// input wire [1 : 0] m00_axi_bresp,
		// input wire  m00_axi_bvalid,
		// output wire  m00_axi_bready,
		// output wire [C_M_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
		// output wire [2 : 0] m00_axi_arprot,
		// output wire  m00_axi_arvalid,
		// input wire  m00_axi_arready,
		// input wire [C_M_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
		// input wire [1 : 0] m00_axi_rresp,
		// input wire  m00_axi_rvalid,
		// output wire  m00_axi_rready,








	//modified

(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg0							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg1							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg2							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg3							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg4							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg5							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg6							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg7							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg8							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg9							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg10							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg11							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg12							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg13							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0]							reg14							,
(* DONT_TOUCH = "TRUE" *) output  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							reg15							,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg0						,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg1						,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg2						,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg3						,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg4						,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg5						,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg6						,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg7						,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg8						,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg9						,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg10					,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg11					,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg12					,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg13					,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg14					,
(* DONT_TOUCH = "TRUE" *) input  wire 			[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg15					 






	);













// Instantiation of Axi Bus Interface S00_AXI
	s_axi_lite_template # ( 
		.C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH)
	) axi_lite_template_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),







		.reg0									(reg0				)	,
		.reg1									(reg1				)	,
		.reg2									(reg2				)	,
		.reg3									(reg3				)	,
		.reg4									(reg4				)	,
		.reg5									(reg5				)	,
		.reg6									(reg6				)	,
		.reg7									(reg7				)	,
		.reg8									(reg8				)	,
		.reg9									(reg9				)	,
		.reg10									(reg10				)	,
		.reg11									(reg11				)	,
		.reg12									(reg12				)	,
		.reg13									(reg13				)	,
		.reg14									(reg14				)	,
		.reg15									(reg15				)	,
		.rdonly_reg0							(rdonly_reg0		)	,
		.rdonly_reg1							(rdonly_reg1		)	,
		.rdonly_reg2							(rdonly_reg2		)	,
		.rdonly_reg3							(rdonly_reg3		)	,
		.rdonly_reg4							(rdonly_reg4		)	,
		.rdonly_reg5							(rdonly_reg5		)	,
		.rdonly_reg6							(rdonly_reg6		)	,
		.rdonly_reg7							(rdonly_reg7		)	,
		.rdonly_reg8							(rdonly_reg8		)	,
		.rdonly_reg9							(rdonly_reg9		)	,
		.rdonly_reg10							(rdonly_reg10		)	,
		.rdonly_reg11							(rdonly_reg11		)	,
		.rdonly_reg12							(rdonly_reg12		)	,
		.rdonly_reg13							(rdonly_reg13		)	,
		.rdonly_reg14							(rdonly_reg14		)	,
		.rdonly_reg15							(rdonly_reg15		)

	);

// // Instantiation of Axi Bus Interface M00_AXI
// 	m_axi_lite_template # ( 
// 		.C_M_START_DATA_VALUE(C_M00_AXI_START_DATA_VALUE),
// 		.C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
// 		.C_M_AXI_ADDR_WIDTH(C_M00_AXI_ADDR_WIDTH),
// 		.C_M_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
// 		.C_M_TRANSACTIONS_NUM(C_M00_AXI_TRANSACTIONS_NUM)
// 	) m_axi_lite_template_M00_AXI_inst (
// 		.INIT_AXI_TXN(),
// 		.ERROR(m00_axi_error),
// 		.TXN_DONE(m00_axi_txn_done),
// 		.M_AXI_ACLK(m00_axi_aclk),
// 		.M_AXI_ARESETN(m00_axi_aresetn),
// 		.M_AXI_AWADDR(m00_axi_awaddr),
// 		.M_AXI_AWPROT(m00_axi_awprot),
// 		.M_AXI_AWVALID(m00_axi_awvalid),
// 		.M_AXI_AWREADY(m00_axi_awready),
// 		.M_AXI_WDATA(m00_axi_wdata),
// 		.M_AXI_WSTRB(m00_axi_wstrb),
// 		.M_AXI_WVALID(m00_axi_wvalid),
// 		.M_AXI_WREADY(m00_axi_wready),
// 		.M_AXI_BRESP(m00_axi_bresp),
// 		.M_AXI_BVALID(m00_axi_bvalid),
// 		.M_AXI_BREADY(m00_axi_bready),
// 		.M_AXI_ARADDR(m00_axi_araddr),
// 		.M_AXI_ARPROT(m00_axi_arprot),
// 		.M_AXI_ARVALID(m00_axi_arvalid),
// 		.M_AXI_ARREADY(m00_axi_arready),
// 		.M_AXI_RDATA(m00_axi_rdata),
// 		.M_AXI_RRESP(m00_axi_rresp),
// 		.M_AXI_RVALID(m00_axi_rvalid),
// 		.M_AXI_RREADY(m00_axi_rready)

// 	);

	// Add user logic here

	// User logic ends

	endmodule
