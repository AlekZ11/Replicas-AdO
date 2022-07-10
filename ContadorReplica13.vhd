----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:49:21 07/09/2022 
-- Design Name: 
-- Module Name:    ContadorReplica13 - Behavioral 
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

entity ContadorReplica13 is
port( clk, reset : in std_logic;
		q : inout std_logic_vector (3 downto 0));
end ContadorReplica13;

architecture Behavioral of ContadorReplica13 is

begin
	process (clk, reset) begin
		if(clk'event and clk='1') then
			if(reset = '1' or q = "1001") then
				q <= "0000";
			else
				q <= q+1;
			end if;
		end if;
	end process;

end Behavioral;

