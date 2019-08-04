----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:57:00 07/22/2019 
-- Design Name: 
-- Module Name:    LED_Test - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity LED_Test is
port(
	--PORTA(0): out std_logic;
	scaler: in std_logic;
	PORTA: out STD_LOGIC_VECTOR (6 downto 0);
	PWR: out STD_LOGIC
	);
end LED_Test;
	
architecture Behavioral of LED_Test is
	-- This is for the clock signal, represented in binary
	signal counter: STD_LOGIC_VECTOR(21 downto 0); -- := "1111010000100100000000";
	-- this is for the bcd
	signal count: STD_LOGIC_VECTOR(3 downto 0) := "0000" ; -- this is for seven seg display, once I get there
	-- this is for the clock signal (slower clock)
	--signal scaler: STD_LOGIC;
begin
	-- This is also the function to slow the clock speed to 1 mHz?
	-- make sure that process is inside of begin while programming...
	--count = '0000';
	--PORTA <= scaler;
	--countClock: process(CLK, scaler)
   --begin
   --     if rising_edge(CLK) then
	--			if counter < "1111010000100100000000" then
	--				counter <= counter + 1;
	--			else 
   --             -- Iterate
   --              scaler <= not scaler;
   --              counter <= (others => '0');
   --         end if;
   --    end if;
   -- end process countClock;
	-- using the newClock we just created, we can add the clock to our function
process(scaler, count)
	begin
	
	PWR <= "1";
	if rising_edge(scaler) then
		case count is
		--eq <= p0 or p1 ;
		when "0000" =>
			PORTA <= "0111111";
			count <= count + 1;
		when "0001" =>
		PORTA <= "0000110";
		count <= count + 1;
		when  "0010" =>
		PORTA <= "1011011";
		count <= count + 1;
		when "0011" =>
		PORTA <= "1001111";
		count <= count + 1;
		when "0100" =>
		PORTA <= "1100110";
		count <= count + 1;
		when "0101" =>
		PORTA <= "1101101";
		count <= count + 1;
		when "0110" =>
		PORTA <= "1111101";
		count <= count + 1;
		when "0111" =>
		PORTA <= "0000111";
		count <= count + 1;
		when "1000" =>
		PORTA <= "1111111";
		count <= count + 1;
		when "1001" =>
		PORTA <= "1100111";
		count <= count + 1;
		when "1010" =>
		PORTA <= "1110111";
		count <= count + 1;
		when "1011" => 
		PORTA <= "1111100";
		count <= count + 1;
		when "1100" =>
		PORTA <= "0111001";
		count <= count + 1;
		when "1101" =>
		PORTA <= "1011110";
		count <= count + 1;
		when "1110" =>
		PORTA <= "1111001";
		count <= count + 1;
		when "1111" =>
		PORTA <= "1110001";
		count <= count + 1;
		when others =>
		count <= count + 1;
		end case;
	end if;
	end process;
end Behavioral;

