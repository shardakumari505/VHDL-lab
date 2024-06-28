----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2024 23:32:24
-- Design Name: 
-- Module Name: encoder8to3 - Behavioral
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

entity enco8x3_seq is  
  port (
    i : in  std_logic_vector(7 downto 0);  -- inputs
    o : out std_logic_vector(2 downto 0));  -- outputs
end enco8x3_seq;
architecture beh of enco8x3_seq is
begin  -- beh
  enco : process (i)
  variable temp : std_logic_vector(2 downto 0);
  begin
    case i is
      when "00000001" => temp := "000";
      when "00000010" => temp := "001";
      when "00000100" => temp := "010";
      when "00001000" => temp := "011" ;
      when "00010000" => temp := "100";
      when "00100000" => temp := "101";
      when "01000000" => temp := "110";
      when "10000000" => temp := "111";
      when others => temp := "XXX";
    end case;
    o <= temp;
  end process enco;

end beh;
