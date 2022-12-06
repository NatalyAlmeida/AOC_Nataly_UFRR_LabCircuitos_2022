library ieee;
use ieee.std_logic_1164.all;

entity mux4x1 is
port
(
 A: in std_logic;
 B: in std_logic;
 C: in std_logic;
 D: in std_logic;
 entvetor:in std_logic_vector (1 downto 0);
 SaidaM: out std_logic
);
end mux4x1;

architecture mux of mux4x1 is
begin
SaidaM <= (not (entvetor (0)) and not (entvetor(1)) and A) or 
       (not (entvetor (0) and (entvetor(1)) and B) or
       ((entvetor(0)) and  not (entvetor (1)) and C) or
       ((entvetor (0) and (entvetor(1)) and D)));
end mux;
