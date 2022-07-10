----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:00:46 07/09/2022 
-- Design Name: 
-- Module Name:    ContadorReplica17 - Behavioral 
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


entity ContadorReplica17 is
port( P : in std_logic_vector (3 downto 0);
		clk, LOAD, ENP, RESET : in std_logic;
		Q : inout std_logic_vector (3 downto 0));
end ContadorReplica17;

architecture Behavioral of ContadorReplica17 is

begin
	process (clk, LOAD, ENP, RESET) begin
		if (RESET = '1')then
			Q <= "0000";
		elsif(clk'event and clk='1') then
			if(LOAD = '0' and ENP ='-') then
				Q <= P;
			elsif (LOAD = '1' and ENP ='0') then
				Q <= Q+1;
			elsif (LOAD = '1' and ENP ='1')then
				Q <= Q-1;
			end if;
		end if;
	end process;

end Behavioral;

