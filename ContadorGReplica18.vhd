----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:04:56 07/09/2022 
-- Design Name: 
-- Module Name:    ContadorGReplica18 - Behavioral 
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


entity ContadorGReplica18 is
generic (contador_valor : integer :=511);
port( clk, ld, clr, en : in std_logic;
		data : in integer range 0 to contador_valor;
		Q : inout integer range 0 to contador_valor);
end ContadorGReplica18;

architecture Behavioral of ContadorGReplica18 is
	signal contador_signal: integer range 0 to contador_valor;
begin
	process (clk, ld, en, clr) begin
		if(clr = '0')then
			contador_signal <= 0;
		elsif(clk'event and clk='1') then
			if en ='1' then
			if ld ='0' then
				contador_signal <= data;
			else
				contador_signal <= data;
			end if;
		end if;
		end if;
	end process;

end Behavioral;

