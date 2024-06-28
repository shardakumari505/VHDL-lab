----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2024 17:15:17
-- Design Name: 
-- Module Name: comparator - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparator is
    Port ( num1,num2   : in std_logic_vector(3 downto 0);
           less : out STD_LOGIC;
           greater : out STD_LOGIC;
           equal : out STD_LOGIC);
end comparator;

architecture Behavioral of comparator is

begin

process(num1,num2)
begin
    if (num1 > num2 ) then
        less <= '0';
        equal <= '0';
        greater <= '1';
    elsif (num1 < num2) then
        less <= '1';
        equal <= '0';
        greater <= '0';
    else
        less <= '0';
        equal <= '1';
        greater <= '0';
    end if;
end process;

end Behavioral;
