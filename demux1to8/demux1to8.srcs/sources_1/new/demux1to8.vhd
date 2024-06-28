----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2024 15:33:45
-- Design Name: 
-- Module Name: demux1to8 - Behavioral
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

entity demux1to8 is
port(f:in std_logic;
s:in std_logic_vector(2 downto 0);
y:out std_logic_vector(7 downto 0));
end demux1to8;

architecture Behavioral of demux1to8 is
begin
y(0)<=f when s="000"else'0';
y(1)<=f when s="001"else'0';
y(2)<=f when s="010"else'0';
y(3)<=f when s="011"else'0';
y(4)<=f when s="100"else'0';
y(5)<=f when s="101"else'0';
y(6)<=f when s="110"else'0';
y(7)<=f when s="111"else'0';

end Behavioral;
