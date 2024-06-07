library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity MOD_8 is
    Port ( clk : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (0 to 2));
end MOD_8;

architecture Behavioral of MOD_8 is
signal count1:STD_LOGIC_VECTOR(0 to 2):="000";

begin
process(clk)

begin
if(clk'event and clk='1')then
if(count1<"111"or count1="111")then
count1<=count1+1;

else
count1<="000";
end if;
end if;

end process;
count<=count1;
end behavioral;
