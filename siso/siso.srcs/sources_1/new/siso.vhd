----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2024 19:41:16
-- Design Name: 
-- Module Name: siso - Behavioral
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

entity siso is
Port ( si : in  STD_LOGIC;
     clk : in  STD_LOGIC;
           so : out  STD_LOGIC);
end siso;

architecture Behavioral of siso is
signal temp : std_logic_vector(3 downto 0);

begin
 process(clk)
 begin
  if(clk'event and clk ='1')then
   temp <= si & temp(3 downto 1);
  end if;
 end process;
 so <= temp(0);
end Behavioral;

