-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Mon Aug 27 16:24:44 2018
-- Host        : b1409dewei running 64-bit Linux Mint 19 Tara
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_cnt_0_0_stub.vhdl
-- Design      : design_1_cnt_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    reset : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 1 downto 0 );
    and_out : out STD_LOGIC;
    cnt_val : out STD_LOGIC_VECTOR ( 3 downto 0 );
    null_port : out STD_LOGIC;
    high_port : out STD_LOGIC;
    clk : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset,btn[1:0],and_out,cnt_val[3:0],null_port,high_port,clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cnt,Vivado 2018.2";
begin
end;
