library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.ALL;

entity bancregi is
    port(
        regiA: in std_logic_vector(1 downto 0);
        regiB : in std_logic_vector(1 downto 0);
        dados  : in std_logic_vector(7 downto 0);

        saidaA        : out std_logic_vector(7 downto 0);
        saidaB        : out std_logic_vector(7 downto 0);

        REGIS         : in std_logic
		      );
end bancregi;

architecture bancont of bancregi is

    type banco is array (0 to 3) of std_logic_vector (7 downto 0);
    signal registro : banco;

    begin
        process (regiA)
			begin
	      
            if (regis = '1') then 
                registro (nt(unsigned(regiA))) <= dados;   
            end if;
            saidaA <= registro (nt(unsigned(regiA))); 
            saidaB <= registro (nt(unsigned(regB)));
        end process;

end bancont;
