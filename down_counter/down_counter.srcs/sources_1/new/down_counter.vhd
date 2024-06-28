----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2024 17:42:47
-- Design Name: 
-- Module Name: down_counter - Behavioral
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

entity down_counter is
Port ( clk,rst : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end down_counter;

architecture Behavioral of down_counter is

signal temp:std_logic_vector(3 downto 0);
begin
process(clk,rst)
begin

if(rst='1')then
    temp <= "1111";
elsif(rising_edge(clk))then
    temp <= temp - 1;
end if;
end process;

count<=temp;

end Behavioral;
