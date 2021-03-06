----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:55:28 07/09/2022 
-- Design Name: 
-- Module Name:    FlipFlopReplica04 - Behavioral 
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

entity FlipFlopReplica04 is
port (D, clk, RESET: in std_logic;
		Q: out std_logic);
end FlipFlopReplica04;

architecture Behavioral of FlipFlopReplica04 is

begin
process (clk,D,RESET) begin
	if RESET = '1' then
		Q<= '0';
	elsif (clk' event and clk = '1') then
		Q<= D;
	end if;
end process;
end Behavioral;

