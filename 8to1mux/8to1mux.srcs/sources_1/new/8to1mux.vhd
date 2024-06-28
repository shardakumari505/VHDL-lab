----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2024 13:58:31
-- Design Name: 
-- Module Name: 8to1mux - 
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

entity mux8to1 is
port ( ip : in bit_vector (2 downto 0); 
s : in bit_vector (7 downto 0);
op : out bit);
end mux8to1;

architecture behavioural of mux8to1 is
begin
with ip select
op <= s(0) when "000",
s(1) when "001",
s(2) when "010",
s(3) when "011",
s(4) when "100",
s(5) when "101",
s(6) when "110",
s(7) when others;
end behavioural;
