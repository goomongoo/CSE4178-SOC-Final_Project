-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Dec 12 16:57:02 2024
-- Host        : DESKTOP-PM7M19D running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Workspace/2024-2/soc/final_project/matmul_vivado/matmul_vivado.gen/sources_1/bd/design_1/ip/design_1_FND_Encoder_0_0/design_1_FND_Encoder_0_0_stub.vhdl
-- Design      : design_1_FND_Encoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_FND_Encoder_0_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    flag : in STD_LOGIC;
    seg_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    com_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_FND_Encoder_0_0;

architecture stub of design_1_FND_Encoder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,reset_n,flag,seg_out[7:0],com_out[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "FND_Encoder,Vivado 2022.2";
begin
end;
