----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:55:27 07/09/2022 
-- Design Name: 
-- Module Name:    ContadorReplica15 - Behavioral 
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


entity ContadorReplica15 is
port( clk, UP : in std_logic;
		Q : inout std_logic_vector (3 downto 0));
end ContadorReplica15;

architecture Behavioral of ContadorReplica15 is

begin
	process (clk, UP) begin
		if(clk'event and clk='1') then
			if(UP = '0') then
				Q <= Q+1;
			else
				Q <= Q-1;
			end if;
		end if;
	end process;

end Behavioral;

