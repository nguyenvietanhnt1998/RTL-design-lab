----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:17:18 04/28/2026 
-- Design Name: 
-- Module Name:    Decoder_24h_EL_case - Behavioral 
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

entity Decoder_24h_EL_case is
    Port ( i : in  STD_LOGIC_VECTOR (1 downto 0);
           e : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder_24h_EL_case;

architecture Behavioral of Decoder_24h_EL_case is

begin

process(i,e)
		begin
				case e is
					when '1' 	=> o <= "0000";
					when others => 
						case i is
							when "00" 	=> o <= "0001";
							when "01"	=> o <= "0010";
							when "10" 	=> o <= "0100";
							when others => o <= "1000";
						end case;
				end case;
		end process;

end Behavioral;

