----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:02:21 07/09/2022 
-- Design Name: 
-- Module Name:    FlipFlopReplica05 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FlipFlopReplica05 is
port (D, clk, RESET, EN: in std_logic;
		Q: inout std_logic);
end FlipFlopReplica05;

architecture Behavioral of FlipFlopReplica05 is
	signal q_aux: std_logic;
begin
	process (clk,RESET,EN) begin
		if RESET = '1' then q_aux<='0';
		elsif (clk'event and clk = '1') then
		if ( EN = '1') then q_aux<= D;
		else q_aux<= Q;
		end if;
		end if;
	end process;
	Q<=q_aux;
end Behavioral;

