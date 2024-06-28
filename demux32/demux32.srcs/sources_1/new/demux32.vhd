----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2024 16:02:07
-- Design Name: 
-- Module Name: demux32 - Behavioral
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

entity demux32 is
port (
  a      : in  std_logic_vector(4 downto 0);
  enable : in  std_logic;
  y      : out std_logic_vector(31 downto 0)
);
end demux32;

architecture Behavioral of demux32 is

begin

  demux_a_to_y: process (a, enable)
  begin
    y <= (others => '0');
    if enable = '1' then
      y(to_integer(unsigned(a))) <= '1';
    end if;
  end process;

end behaviour;
