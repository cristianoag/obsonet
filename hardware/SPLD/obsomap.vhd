library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

entity obsomap is
  port (NSLTSL: in std_logic;
	NMERQ: in std_logic;
	I_NRD: in std_logic;
	NRESET: in std_logic;
	A15: in std_logic;
	A14: in std_logic;
	NH_L: in std_logic;
	I_NWR: in std_logic;
	RTL_RST: out std_logic;
	RTL_NCS: out std_logic;
	O_NRD: out std_logic;
	FLASH_NCS: out std_logic;
	O_NWR: out std_logic;
	NBUSDIR: out std_logic);
end obsomap;

architecture arq1 of obsomap is
  signal BANK1, BANK2, RTL_ACCESS, FLASH_ACCESS: std_logic;
begin

  BANK1 <= (not NSLTSL) and (not A15) and A14;
  BANK2 <= (not NSLTSL) and A15 and (not A14);
  
  RTL_ACCESS <= (BANK1 or BANK2) and (not NH_L) and (not NMERQ);
  FLASH_ACCESS <= BANK1 and NH_L and (not NMERQ);

  NBUSDIR <= not ((RTL_ACCESS or FLASH_ACCESS) and (not I_NRD));
  RTL_NCS <= not RTL_ACCESS;
  FLASH_NCS <= not FLASH_ACCESS;

  RTL_RST <= not NRESET;
  O_NWR <= I_NWR;
  O_NRD <= I_NRD;

end arq1;

