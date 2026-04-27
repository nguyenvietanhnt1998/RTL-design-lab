--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:29:45 04/28/2026
-- Design Name:   
-- Module Name:   C:/Users/LENOVO/Desktop/Intern-RTL/Decoder_24h_2E_2ic/Testbench.vhd
-- Project Name:  Decoder_24h_2E_2ic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decoder_24h_2E_2ic
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
 
ENTITY Testbench IS
END Testbench;
 
ARCHITECTURE behavior OF Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder_24h_2E_2ic
    PORT(
         sw : IN  std_logic_vector(5 downto 0);
         led : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sw : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal led : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder_24h_2E_2ic PORT MAP (
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
		-- E1 unactive, E2 unactive
		sw <= "100000"; wait for 100 ns;	-- E1 active low, E2 active high, outputs = 0.
		sw <= "101001"; wait for 100 ns;	-- E1 active low, E2 active high, outputs = 0.
		sw <= "110010"; wait for 100 ns;	-- E1 active low, E2 active high, outputs = 0.
		sw <= "111011"; wait for 100 ns;	-- E1 active low, E2 active high, outputs = 0.
		
		-- E1 active, E2 unactive
		sw <= "100100"; wait for 100 ns;	-- E1 active high, output1 active high.
		sw <= "100101"; wait for 100 ns;	-- E1 active high, output1 active high.
		sw <= "100110"; wait for 100 ns;	-- E1 active high, output1 active high.
		sw <= "100111"; wait for 100 ns;	-- E1 active high, output1 active high.
		
		-- E2 active, E1 unactive
		sw <= "000000"; wait for 100 ns;	-- E2 active low, output2 active high.
		sw <= "001000"; wait for 100 ns;	-- E2 active low, output2 active high.
		sw <= "010000"; wait for 100 ns;	-- E2 active low, output2 active high.
		sw <= "011000"; wait for 100 ns;	-- E2 active low, output2 active high.
		
		-- E1 active, E2 active
		sw <= "000100"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "000101"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "000110"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "000111"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "001000"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "001001"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "001010"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "001011"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "001100"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "001101"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "001110"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "001111"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		
		sw <= "010000"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "010001"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "010010"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "010011"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "010100"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "010101"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "010110"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "010111"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		
		sw <= "011000"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "011001"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "011010"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "011011"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "011100"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "011101"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "011110"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.
		sw <= "011111"; wait for 100 ns;	-- E1 active high, E2 active low, outputs active high.

--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
