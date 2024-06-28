----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2024 21:14:39
-- Design Name: 
-- Module Name: piso - Behavioral
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

entity piso is
port (clk, ce, oe, ld : in std_logic;
pin : in std_logic_vector(7 downto 0);
sout : out std_logic);
end piso;

architecture pinsoutshift_a of piso is
signal inet : std_logic_vector(7 downto 0);
begin
process(clk,ce,ld)
begin
if (ce = '1') then
if (clk='1') and (clk'event) then
if ld = '1' then
inet <= pin;
else
inet(0) <= inet(1);
inet(1) <= inet(2);
inet(2) <= inet(3);
inet(3) <= inet(4);
inet(4) <= inet(5);
inet(5) <= inet(6);
inet(6) <= inet(7);
inet(7) <= '0';
end if;
end if;
end if;
end process;
process(oe)
begin
if(ce = '1' and oe = '1') then
sout <= inet(0);
else
sout <= 'Z';
end if;
end process;
end pinsoutshift_a;
