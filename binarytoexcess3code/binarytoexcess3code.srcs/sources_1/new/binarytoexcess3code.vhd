----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2024 19:03:55
-- Design Name: 
-- Module Name: binarytoexcess3code - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity binarytoexcess3code is
port (a: in std_logic_vector (3 downto 0);
y: out std_logic_vector (3 downto 0));
end binarytoexcess3code;
architecture Behavioral of binarytoexcess3code is
begin
process(a)
begin
case a is
when "0000" => y <= "0011";
when "0001" => y <= "0100";
when "0010" => y <= "0101";
when "0011" => y <= "0110";
when "0100" => y <= "0111";
when "0101" => y <= "1000";
when "0110" => y <= "1001";
when "0111" => y <= "1010";
when "1000" => y <= "1011";
when "1001" => y <= "1100";
when others => y <= "0000";
end case;
end process;
end Behavioral;
