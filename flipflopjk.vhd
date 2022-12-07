library ieee;
use ieee.std_logic_1164.all;


entity flipjk is
port (

      J: in std_logic;
		K: in std_logic;
		clk: in std_logic;
		resetar: in std_logic;
		q: out std_logic
	);
end flipjk;

architecture jk of flipjk is
signal nr : std_logic;
begin
  process 
    begin 
	    if resetar = '1'then nr <= '0';
		 end if;
		 wait until clk'event and clk = '1';
		 if (j = '0' and k= '0') then nr <= nr;
		 elsif ( j = '0' and k = '1') then nr <= '0';
		 elsif ( j = '1' and k = '0') then nr <= '1';
		 elsif ( j = '1' and k = '1') then nr <= not nr;
		 end if;
  end process;
  q <= nr;
 end jk;
