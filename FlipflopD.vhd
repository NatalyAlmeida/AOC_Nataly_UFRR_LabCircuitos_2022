LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.all;

entity flipf IS
PORT (
       D, Clock: IN STD_LOGIC;
		 Q : OUT STD_LOGIC);
END flipf;
ARCHITECTURE flipx  OF flipf IS
BEGIN 
 PROCESS (D,Clock)
   BEGIN
	    IF Clock = '1' THEN
		 Q <= D;
		 END IF;
  END PROCESS;
 END FLIPX;
