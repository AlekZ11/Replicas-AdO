----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:45:16 07/09/2022 
-- Design Name: 
-- Module Name:    ContadorReplica12 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ContadorReplica12 is
port( clk : in std_logic;
		Q : inout std_logic_vector (3 downto 0));
--attribute pin_numbers of ContadorReplica12: entity is 
--"clk:1 Q(3):14 Q(2):15 Q(1):16 Q(0):17 ";
end ContadorReplica12;

architecture Behavioral of ContadorReplica12 is

begin
	process (clk) begin
		if(clk'event and clk='1') then
			Q <= Q+1;
		end if;
	end process;

end Behavioral;

