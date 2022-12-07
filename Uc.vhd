library ieee;
use ieee.std_logic_1164.all;

entity uc is
    port(

        uc_clk    : in std_logic;
        entradauc : in std_logic_vector(3 downto 0);
        jump   : out std_logic;
        branch : out std_logic;
        mread : out std_logic;
        reg : out std_logic;

        ulop    : out std_logic_vector(3 downto 0);
        Mwrite : out std_logic;
        src : out std_logic;
        regwrit : out std_logic
      );
end uc;

architecture unc of uc is
    begin
        process (uc_clk)
			begin
            case entradauc is
                when "0000" => 
                    jump <= '0';
                    branch <= '0';
                    Mread <= '0';
                    reg <= '0';
                    ulop <= "0000";
                    Mwrite <= '0';
                    src <= '0';
                    regwrit <= '1';
                
                when "0001" => 
                    jump <= '0';
                    branch <= '0';
                    Mread <= '0';
                    reg <= '0';
                    ulop <= "0001";
                    Mwrite <= '0';
                    src <= '0';
                    regwrit <= '1';
                
                when "0010" => 
                    jump <= '0';
                    branch <= '0';
                    Mread <= '0';
                    reg <= '0';
                    ulop <= "0010";
                    Mwrite <= '0';
                    src <= '0';
                    regwrit <= '1';
                
                when "0011" => 
                    jump <= '0';
                    branch <= '0';
                    Mread <= '1';
                    reg <= '1';
                    ulop <= "0011";
                    Mwrite <= '0';
                    src <= '0';
                    regwrit <= '1';

                when "0100" => 
                    jump <= '0';
                    branch <= '0';
                    Mread <= '0';
                    reg <= '0';
                    ulop <= "0100";
                    Mwrite <= '1';
                    src <= '0';
                    regwrit <= '0';
                
                when "0101" => 
                    jump <= '0';
                    branch <= '0';
                    Mread <= '0';
                    reg <= '0';
                    ulop <= "0101";
                    Mwrite <= '0';
                    src <= '1';
                    regwrit <= '1';
                
                when "0110" => 
                    jump <= '0';
                    branch <= '1';
                    Mread <= '0';
                    reg <= '0';
                    ulop <= "0110";
                    Mwrite <= '0';
                    src <= '0';
                    regwrit <= '0';

                when "0111" => 
                    jump <= '0';
                    branch <= '1';
                    Mread <= '0';
                    reg <= '0';
                    ulop <= "0111";
                    Mwrite <= '0';
                    src <= '0';
                    regwrit <= '0';

                when "1000" => 
                    jump <= '1';
                    branch <= '0';
                    Mread <= '0';
                    reg <= '0';
                    ulop <= "1000";
                    Mwrite <= '0';
                    src <= '0';
                    regwrit <= '0';
					
                when "1001" => 
                    jump <= '0';
                    branch <= '0';
                    Mread <= '0';
                    reg <= '0';
                    ulop <= "1001";
                    Mwrite <= '0';
                    src <= '0';
                    regwrit <= '0';		 
					
				when others => 
			    	jump <= '0';
                    branch <= '0';
                    Mread <= '0';
                    reg <= '0';
                    ulop <= "1111";
                    Mwrite <= '0';
                    src <= '0';
                    regwrit <= '0';
            end case;
        end process;
end unc;
