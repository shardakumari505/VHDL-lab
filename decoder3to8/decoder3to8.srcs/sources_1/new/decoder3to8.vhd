----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2024 23:12:43
-- Design Name: 
-- Module Name: decoder3to8 - Behavioral
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

entity deco3x8_seq is  
  port (
    ip : in  std_logic_vector(2 downto 0);
    op : out std_logic_vector(7 downto 0));

end deco3x8_seq;
architecture beh of deco3x8_seq is
begin
deco : process (ip)
  variable temp : std_logic_vector(7 downto 0);
  begin
    case ip is
      when "000" => temp := "00000001";
      when "001" => temp := "00000010";
      when "010" => temp := "00000100";
      when "011" => temp := "00001000";
      when "100" => temp := "00010000";
      when "101" => temp := "00100000";
      when "110" => temp := "01000000";
      when "111" => temp := "10000000";
      when others => temp := "XXXXXXXX";
    end case;
    op <= temp;
 end process deco;
end beh;
