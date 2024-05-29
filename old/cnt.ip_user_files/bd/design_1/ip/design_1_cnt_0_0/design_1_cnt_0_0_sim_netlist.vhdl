-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Mon Aug 27 16:24:45 2018
-- Host        : b1409dewei running 64-bit Linux Mint 19 Tara
-- Command     : write_vhdl -force -mode funcsim
--               /media/b1409_dewei/WorkDisk/WorkSpace/zedBoard/cnt/cnt.srcs/sources_1/bd/design_1/ip/design_1_cnt_0_0/design_1_cnt_0_0_sim_netlist.vhdl
-- Design      : design_1_cnt_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cnt_0_0_cnt is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_cnt_0_0_cnt : entity is "cnt";
end design_1_cnt_0_0_cnt;

architecture STRUCTURE of design_1_cnt_0_0_cnt is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cnt_buf[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_buf[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_buf[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_buf[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_buf[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_buf[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_buf[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_buf[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_buf[3]_i_1\ : label is "soft_lutpair1";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\cnt_buf[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \cnt_buf[0]_i_1_n_0\
    );
\cnt_buf[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C3C"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \cnt_buf[1]_i_1_n_0\
    );
\cnt_buf[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \cnt_buf[2]_i_1_n_0\
    );
\cnt_buf[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \cnt_buf[3]_i_1_n_0\
    );
\cnt_buf[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => \cnt_buf[3]_i_2_n_0\
    );
\cnt_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_buf[3]_i_2_n_0\,
      D => \cnt_buf[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\cnt_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_buf[3]_i_2_n_0\,
      D => \cnt_buf[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\cnt_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_buf[3]_i_2_n_0\,
      D => \cnt_buf[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\cnt_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_buf[3]_i_2_n_0\,
      D => \cnt_buf[3]_i_1_n_0\,
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cnt_0_0 is
  port (
    reset : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 1 downto 0 );
    and_out : out STD_LOGIC;
    cnt_val : out STD_LOGIC_VECTOR ( 3 downto 0 );
    null_port : out STD_LOGIC;
    high_port : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_cnt_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_cnt_0_0 : entity is "design_1_cnt_0_0,cnt,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_cnt_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_cnt_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_cnt_0_0 : entity is "cnt,Vivado 2018.2";
end design_1_cnt_0_0;

architecture STRUCTURE of design_1_cnt_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_in";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
begin
  high_port <= \<const1>\;
  null_port <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
and_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => btn(1),
      I1 => btn(0),
      O => and_out
    );
inst: entity work.design_1_cnt_0_0_cnt
     port map (
      Q(3 downto 0) => cnt_val(3 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
