library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decoder3x8 is
    Port ( S : in STD_LOGIC_VECTOR (0 to 2);
           E : in STD_LOGIC;
           D : out STD_LOGIC_VECTOR (0 to 7));
end decoder3x8;


architecture Behavioral of decoder3x8 is

begin
process(S,E)
begin
if (E<='1') then

case s is 
when "000"=>d<="00000001";
when "001"=>d<="00000010";
when "010"=>d<="00000100";
when "011"=>d<="00001000";
when "100"=>d<="00010000";
when "101"=>d<="00100000";
when "110"=>d<="01000000";
when others=>d<="10000000";
end case;

else d<="00000000";
end if;
end process;
end Behavioral;
