-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Dec 11 12:53:34 2024
-- Host        : DESKTOP-PM7M19D running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_axi_lite_template_top_0_0 -prefix
--               design_1_axi_lite_template_top_0_0_ design_1_axi_lite_template_top_0_0_stub.vhdl
-- Design      : design_1_axi_lite_template_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_axi_lite_template_top_0_0 is
  Port ( 
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    reg0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg11 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg13 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg14 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rdonly_reg15 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_axi_lite_template_top_0_0;

architecture stub of design_1_axi_lite_template_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[31:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[31:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,reg0[31:0],reg1[31:0],reg2[31:0],reg3[31:0],reg4[31:0],reg5[31:0],reg6[31:0],reg7[31:0],reg8[31:0],reg9[31:0],reg10[31:0],reg11[31:0],reg12[31:0],reg13[31:0],reg14[31:0],reg15[31:0],rdonly_reg0[31:0],rdonly_reg1[31:0],rdonly_reg2[31:0],rdonly_reg3[31:0],rdonly_reg4[31:0],rdonly_reg5[31:0],rdonly_reg6[31:0],rdonly_reg7[31:0],rdonly_reg8[31:0],rdonly_reg9[31:0],rdonly_reg10[31:0],rdonly_reg11[31:0],rdonly_reg12[31:0],rdonly_reg13[31:0],rdonly_reg14[31:0],rdonly_reg15[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_lite_template_top,Vivado 2022.2";
begin
end;
