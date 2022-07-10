----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:17:47 07/09/2022 
-- Design Name: 
-- Module Name:    DiagramaReplica20 - Behavioral 
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

entity DiagramaReplica20 is
port( clk,x: in std_logic;
		z: out std_logic);
end DiagramaReplica20;

architecture Behavioral of DiagramaReplica20 is
	type estados is (q0,q1,q2,q3,q4);
	signal edo_pres, edo_fut:estados;
begin
	proceso1: process (edo_pres, x) begin
		case edo_pres is
			when q0 => z <= '0';
				if x ='0' then
					edo_fut <= q4;
				else
					edo_fut <= q1;
				end if;
			when q1 => z <= '0';
				if x ='0' then
					edo_fut <= q4;
				else
					edo_fut <= q2;
				end if;
			when q2 => z <= '0';
				if x ='0' then
					edo_fut <= q4;
				else
					edo_fut <= q3;
				end if;
			when q3 => z <= '0';
				if x ='0' then
					edo_fut <= q3;
				else
					edo_fut <= q3;
				end if;
			when q4 => z <= '0';
				if x ='0' then
					edo_fut <= q4;
				else
					edo_fut <= q1;
				end if;
		end case;
	end process proceso1;
	
	proceso2 : process(clk) begin
		if(clk'event and clk ='1') then
			edo_pres <= edo_fut;
		end if;
	end process proceso2;

end Behavioral;

