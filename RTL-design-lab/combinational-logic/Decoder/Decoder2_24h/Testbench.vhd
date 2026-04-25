--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:47:54 04/25/2026
-- Design Name:   
-- Module Name:   C:/Users/LENOVO/Desktop/Intern-RTL/Decoder2_24h/Tb.vhd
-- Project Name:  Decoder2_24h
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decoder2_24h
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Tb IS
END Tb;
 
ARCHITECTURE behavior OF Tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder2_24h
    PORT(
         sw : IN  std_logic_vector(3 downto 0);
         led : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sw : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal led : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder2_24h PORT MAP (
          sw => sw,
          led => led
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		sw <= "0000"; wait for 100 ns;	
		sw <= "0001"; wait for 100 ns;	
		sw <= "0010"; wait for 100 ns;	
		sw <= "0011"; wait for 100 ns;	
		sw <= "0100"; wait for 100 ns;	
		sw <= "0101"; wait for 100 ns;	
		sw <= "0110"; wait for 100 ns;	
		sw <= "0111"; wait for 100 ns;	
		sw <= "1000"; wait for 100 ns;
		
		sw <= "1001"; wait for 100 ns;	
		sw <= "1010"; wait for 100 ns;	
		sw <= "1011"; wait for 100 ns;	
		sw <= "1100"; wait for 100 ns;	
		sw <= "1101"; wait for 100 ns;	
		sw <= "1110"; wait for 100 ns;	
		sw <= "1111"; wait for 100 ns;
		
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
