library ieee;
use ieee.std_logic_1164.all;

entity andt is
port ( A,B: IN STD_LOGIC;
       S : OUT STD_LOGIC);
END ANDT;
ARCHITECTURE ANDB OF ANDT IS
BEGIN 
S <= A AND B;
END ANDB;
