----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2024 16:29:03
-- Design Name: 
-- Module Name: half_subtractor - Behavioral
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

entity half_subtractor is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           d : out STD_LOGIC;
           b : out STD_LOGIC);
end half_subtractor;

architecture Behavioral of half_subtractor is

begin

d <= x XOR y;
b <= (NOT x) AND y;

end Behavioral;
