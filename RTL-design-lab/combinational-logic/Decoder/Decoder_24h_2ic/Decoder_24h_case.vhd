----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:39:34 04/26/2026 
-- Design Name: 
-- Module Name:    Decoder_24h_case - Behavioral 
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

entity Decoder_24h_case is
    Port ( i : in  STD_LOGIC_VECTOR (1 downto 0);
           o : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder_24h_case;

architecture Behavioral of Decoder_24h_case is

begin
		process(i)
		begin
				case i is
					when "00" 	=> o <= "0001";
					when "01"	=> o <= "0010";
					when "10" 	=> o <= "0100";
					when others => o <= "1000";
				end case;
		end process;

end Behavioral;

