----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:29:31 04/14/2026 
-- Design Name: 
-- Module Name:    Encoder2_24h - Behavioral 
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

entity Encoder2_24h is
    Port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end Encoder2_24h;

architecture Behavioral of Encoder2_24h is

begin

IC1: entity work.Encoder_select_ins
	port map( i => sw(1 downto 0),
				 o => led(3 downto 0));

IC2: entity work.Encoder_conditional_ins
	port map( i => sw(3 downto 2),
				 o => led(7 downto 4));

end Behavioral;

