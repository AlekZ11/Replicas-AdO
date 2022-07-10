----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:58:15 07/09/2022 
-- Design Name: 
-- Module Name:    ContadorReplica16 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;


entity ContadorReplica16 is
port( clk, LD, UP : in std_logic;
		D : in std_logic_vector (2 downto 0);
		Q : inout std_logic_vector (2 downto 0));
end ContadorReplica16;

architecture Behavioral of ContadorReplica16 is

begin
	process (clk, LD, D, UP) begin
		if(clk'event and clk='1') then
			if(LD = '0') then
				Q <= D;
			elsif UP = '1' then
				Q <= Q+1;
			else
				Q <= Q-1;
			end if;
		end if;
	end process;

end Behavioral;
