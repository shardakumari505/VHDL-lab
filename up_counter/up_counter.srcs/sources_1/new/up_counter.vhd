----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2024 17:18:05
-- Design Name: 
-- Module Name: up_counter - Behavioral
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity up_counter_sync is
generic(N: INTEGER := 4);
port(
clock : in STD_LOGIC;
reset : in STD_LOGIC;
qout : out STD_LOGIC_VECTOR(N-1 downto 0)
);
end up_counter_sync;

architecture up_counter of up_counter_sync is
    signal temp_count: std_logic_vector(N-1 downto 0);
begin
    process(clock,reset)
    begin
        if(clock='1'and clock'event)then
            if(reset='1')then
                temp_count<=(others=>'0');
            else
                temp_count<= temp_count + 1;
            end if;
        end if;
    end process;
    qout<=temp_count;
end up_counter;
