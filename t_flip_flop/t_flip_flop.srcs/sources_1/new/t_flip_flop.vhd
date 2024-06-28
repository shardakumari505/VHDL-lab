----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2024 14:03:09
-- Design Name: 
-- Module Name: t_flip_flop - Behavioral
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

entity t_flip_flop is
    Port ( t : in STD_LOGIC;
           CLK : in STD_LOGIC;
           q : out STD_LOGIC);
end t_flip_flop;

architecture Behavioral of t_flip_flop is

signal tmp: std_logic;
begin
process (CLK)
begin
if CLK'event AND CLK='1' then 
if t='0' then
tmp <= tmp;
elsif t='1' then
tmp <= not (tmp);
end if;
end if;
end process;
q <= tmp;

end Behavioral;
