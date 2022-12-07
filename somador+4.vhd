library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity somador8 is
    port(
        saida1    : in std_logic_vector(3 downto 0);

        saidasoma  : out std_logic_vector(7 downto 0)
    );
end somador8;

architecture soma of somador8 is

	 signal pertode: std_logic_vector(7 downto 0);
	 
    begin 
        process (saida1)
        begin
            pertode <= "00000001";
            saidasoma <= saida1 + pertode;
        end process;
end soma;
