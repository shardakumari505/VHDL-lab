----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2024 14:51:14
-- Design Name: 
-- Module Name: j_k_flip_flop - Behavioral
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

entity j_k_flip_flop is
    Port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           CLK : in STD_LOGIC;
           rst : in STD_LOGIC;
           q : out STD_LOGIC;
           qb : out STD_LOGIC);
end j_k_flip_flop;

architecture Behavioral of j_k_flip_flop is

begin
process(CLK, rst)
variable qn : std_logic;
begin
if(rst = '1')then
qn := '0';
elsif(CLK'event and CLK = '1')then
if(j='0' and k='0')then
qn := qn;
elsif(j='0' and k='1')then
qn := '0';
elsif(j='1' and k='0')then
qn := '1';
elsif(j='1' and k='1')then
qn := not qn;
else
null;
end if;
else
null;
end if;
q <= qn;
qb <= not qn;

end process;

end Behavioral;
