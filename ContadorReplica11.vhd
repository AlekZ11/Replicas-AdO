----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:39:50 07/09/2022 
-- Design Name: 
-- Module Name:    ContadorReplica11 - Behavioral 
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

entity ContadorReplica11 is
port( clk : in std_logic;
		q : inout std_logic_vector (3 downto 0));
end ContadorReplica11;

architecture Behavioral of ContadorReplica11 is

begin
	process (clk) begin
		if(clk'event and clk='1') then
			q <= q+1;
		end if;
	end process;

end Behavioral;

