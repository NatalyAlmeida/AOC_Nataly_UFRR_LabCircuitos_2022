library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_Std.all; 

entity rome is
    port(
        a: in  std_logic_vector(2 downto 0);
        s: out std_logic_vector(7 downto 0)
    );
end entity;


architecture mem of rome is
constant n0: std_logic_vector(7 downto 0) := x"abcd";
constant n1: std_logic_vector(7 downto 0) := x"aaaa";
constant n2: std_logic_vector(7 downto 0) := x"cccc";
constant n3: std_logic_vector(7 downto 0) := x"dddd";


type romr is array (natural range <>) of
   
	std_logic_vector(7 downto 0);

constant rn: romr := (n0,n1,n2.n3);
begin
    s <= rn(to_integer(unsigned(a)));
end mem;
