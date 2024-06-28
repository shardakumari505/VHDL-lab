----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2024 18:08:30
-- Design Name: 
-- Module Name: bgc - Behavioral
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

entity bgc is
port (
B3,B2,B1,B0: in STD_LOGIC;
G3,G2,G1,G0: out STD_LOGIC
);
end bgc;

architecture Behavioral of bgc is

begin
G3<=B3;
G2<=B2 xor B3;
G1<=B1 xor B2;
G0<=B0 xor B1;


end Behavioral;
