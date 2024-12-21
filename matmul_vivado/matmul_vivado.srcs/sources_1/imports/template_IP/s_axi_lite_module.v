`timescale 1 ns / 1 ps

	module s_axi_lite_template #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		// parameter integer C_S_AXI_ADDR_WIDTH	= 6
		parameter integer C_S_AXI_ADDR_WIDTH	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY,


















		// user_IOs
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg0							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg1							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg2							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg3							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg4							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg5							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg6							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg7							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg8							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg9							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg10							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg11							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg12							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg13							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0]							reg14							,
	output  reg  		[C_S_AXI_DATA_WIDTH-1 : 0] 							reg15							,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg0						,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg1						,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg2						,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg3						,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg4						,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg5						,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg6						,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg7						,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg8						,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg9						,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg10					,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg11					,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg12					,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg13					,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg14					,
	input  wire 		[C_S_AXI_DATA_WIDTH-1 : 0] 							rdonly_reg15					




	
















	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 3;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 16
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg0;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg1;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg2;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg3;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg4;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg5;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg6;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg7;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg8;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg9;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg10;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg11;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg12;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg13;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg14;
	// reg [C_S_AXI_DATA_WIDTH-1:0]	reg15;
	wire	 reg_rden;
	wire	 reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;








//modified
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster0					;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster1					;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster2					;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster3					;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster4					;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster5					;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster6					;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster7					;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster8					;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster9					;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster10				;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster11				;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster12				;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster13				;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster14				;
	reg		[C_S_AXI_DATA_WIDTH-1 : 0]							rdonly_regster15				;
	// wire															sig_sel							;


	


















	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      reg0 <= 0;
	      reg1 <= 0;
	      reg2 <= 0;
	      reg3 <= 0;
	      reg4 <= 0;
	      reg5 <= 0;
	      reg6 <= 0;
	      reg7 <= 0;
	      reg8 <= 0;
	      reg9 <= 0;
	      reg10 <= 0;
	      reg11 <= 0;
	      reg12 <= 0;
	      reg13 <= 0;
	      reg14 <= 0;
	      reg15 <= 0;
	    end 
//modified
	  else if (reg_wren) begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          4'h0:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h1:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h2:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h3:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	                reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h4:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 4
	                reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h5:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 5
	                reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h6:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 6
	                reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h7:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 7
	                reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h8:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 8
	                reg8[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'h9:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 9
	                reg9[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'hA:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 10
	                reg10[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'hB:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 11
	                reg11[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'hC:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 12
	                reg12[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'hD:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 13
	                reg13[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'hE:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 14
	                reg14[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          4'hF:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 15
	                reg15[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                reg0 					<=			reg0								;
	                reg1 					<=			reg1								;
	                reg2 					<=			reg2								;
	                reg3 					<=			reg3								;
	                reg4 					<=			reg4								;
	                reg5 					<=			reg5								;
	                reg6 					<=			reg6								;
	                reg7 					<=			reg7								;
	                reg8 					<=			reg8								;
	                reg9 					<=			reg9								;
	                reg10					<=			reg10								;
	                reg11					<=			reg11								;
	                reg12					<=			reg12								;
	                reg13					<=			reg13								;
	                reg14					<=			reg14								;
	                reg15					<=			reg15								;
	                    end
	        endcase
	  end
	
	end



	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;



	// always @(*)
	// begin
	//       // Address decoding for reading registers
	//       case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	//         4'h0   : reg_data_out <= reg0;
	//         4'h1   : reg_data_out <= reg1;
	//         4'h2   : reg_data_out <= reg2;
	//         4'h3   : reg_data_out <= reg3;
	//         4'h4   : reg_data_out <= reg4;
	//         4'h5   : reg_data_out <= reg5;
	//         4'h6   : reg_data_out <= reg6;
	//         4'h7   : reg_data_out <= reg7;
	//         4'h8   : reg_data_out <= reg8;
	//         4'h9   : reg_data_out <= reg9;
	//         4'hA   : reg_data_out <= reg10;
	//         4'hB   : reg_data_out <= reg11;
	//         4'hC   : reg_data_out <= reg12;
	//         4'hD   : reg_data_out <= reg13;
	//         4'hE   : reg_data_out <= reg14;
	//         4'hF   : reg_data_out <= reg15;
	//         default : reg_data_out <= 0;
	//       endcase
	// end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    













	// Add user logic here
	always @(posedge S_AXI_ACLK) begin
		if (!S_AXI_ARESETN) begin
			rdonly_regster0	 			<= 						0							;
			rdonly_regster1	 			<= 						0							;
			rdonly_regster2	 			<= 						0							;
			rdonly_regster3	 			<= 						0							;
			rdonly_regster4	 			<= 						0							;
			rdonly_regster5	 			<= 						0							;
			rdonly_regster6	 			<= 						0							;
			rdonly_regster7	 			<= 						0							;
			rdonly_regster8	 			<= 						0							;
			rdonly_regster9	 			<= 						0							;
			rdonly_regster10 			<= 						0							;
			rdonly_regster11 			<= 						0							;
			rdonly_regster12 			<= 						0							;
			rdonly_regster13 			<= 						0							;
			rdonly_regster14 			<= 						0							;
			rdonly_regster15 			<= 						0							;
		end
		else begin
			rdonly_regster0	 			<= 						rdonly_reg0					;
			rdonly_regster1	 			<= 						rdonly_reg1					;
			rdonly_regster2	 			<= 						rdonly_reg2					;
			rdonly_regster3	 			<= 						rdonly_reg3					;
			rdonly_regster4	 			<= 						rdonly_reg4					;
			rdonly_regster5	 			<= 						rdonly_reg5					;
			rdonly_regster6	 			<= 						rdonly_reg6					;
			rdonly_regster7	 			<= 						rdonly_reg7					;
			rdonly_regster8	 			<= 						rdonly_reg8					;
			rdonly_regster9	 			<= 						rdonly_reg9					;
			rdonly_regster10 			<= 						rdonly_reg10				;
			rdonly_regster11 			<= 						rdonly_reg11				;
			rdonly_regster12 			<= 						rdonly_reg12				;
			rdonly_regster13 			<= 						rdonly_reg13				;
			rdonly_regster14 			<= 						rdonly_reg14				;
			rdonly_regster15 			<= 						rdonly_reg15				;
		end
	end



	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS+12:ADDR_LSB] )
	        16'h0000   : 	reg_data_out			<= 						reg0						;
	        16'h0001   : 	reg_data_out			<= 						reg1						;
	        16'h0002   : 	reg_data_out			<= 						reg2						;
	        16'h0003   : 	reg_data_out			<= 						reg3						;
	        16'h0004   : 	reg_data_out			<= 						reg4						;
	        16'h0005   : 	reg_data_out			<= 						reg5						;
	        16'h0006   : 	reg_data_out			<= 						reg6						;
	        16'h0007   : 	reg_data_out			<= 						reg7						;
	        16'h0008   : 	reg_data_out			<= 						reg8						;
	        16'h0009   : 	reg_data_out			<= 						reg9						;
	        16'h000A   : 	reg_data_out			<= 						reg10						;
	        16'h000B   : 	reg_data_out			<= 						reg11						;
	        16'h000C   : 	reg_data_out			<= 						reg12						;
	        16'h000D   : 	reg_data_out			<= 						reg13						;
	        16'h000E   : 	reg_data_out			<= 						reg14						;
	        16'h000F   : 	reg_data_out			<= 						reg15						;
	        16'h0100   : 	reg_data_out 			<= 						rdonly_regster0				;
	        16'h0101   : 	reg_data_out 			<= 						rdonly_regster1				;
	        16'h0102   : 	reg_data_out 			<= 						rdonly_regster2				;
	        16'h0103   : 	reg_data_out 			<= 						rdonly_regster3				;
	        16'h0104   : 	reg_data_out 			<= 						rdonly_regster4				;
	        16'h0105   : 	reg_data_out 			<= 						rdonly_regster5				;
	        16'h0106   : 	reg_data_out 			<= 						rdonly_regster6				;
	        16'h0107   : 	reg_data_out 			<= 						rdonly_regster7				;
	        16'h0108   : 	reg_data_out 			<= 						rdonly_regster8				;
	        16'h0109   : 	reg_data_out 			<= 						rdonly_regster9				;
	        16'h010A   : 	reg_data_out 			<= 						rdonly_regster10			;
	        16'h010B   : 	reg_data_out 			<= 						rdonly_regster11			;
	        16'h010C   : 	reg_data_out 			<= 						rdonly_regster12			;
			16'h010D   : 	reg_data_out 			<= 						rdonly_regster13			;
			16'h010E   : 	reg_data_out 			<= 						rdonly_regster14			;
	        16'h010F   : 	reg_data_out 			<= 						rdonly_regster15			;
	        default    :	reg_data_out			<=						0							;
	      endcase
	end






	// User logic ends


	endmodule