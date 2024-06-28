----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2024 14:17:31
-- Design Name: 
-- Module Name: mux32to1 - Behavioral
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

entity mux32to1 is
    Port ( data1_i : in  STD_LOGIC_VECTOR (31 downto 0);
           data2_i : in  STD_LOGIC_VECTOR (31 downto 0);
           data3_i : in  STD_LOGIC_VECTOR (31 downto 0);
           data4_i : in  STD_LOGIC_VECTOR (31 downto 0);
           data5_i : in  STD_LOGIC_VECTOR (31 downto 0);
           line_s  : in  STD_LOGIC_VECTOR (2 downto 0);
           data_o  : out STD_LOGIC_VECTOR (31 downto 0)
              );
end mux32to1;

architecture Behavioral of mux32to1 is

begin
process(line_s,data1_i,data2_i,data3_i,data4_i,data5_i)
begin
    case line_s is
    when "001" => data_o <= data1_i;
    when "010" => data_o <= data2_i;
    when "011" => data_o <= data3_i;
    when "100" => data_o <= data4_i;
    when "101" => data_o <= data5_i;
    when others => data_o <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
    end case;
end process;


end Behavioral;
