library IEEE;
use IEEE.std_logic_1164.all;

entity half_sub is
port(A,B: in std_logic;          
diff,borrow : out std_logic
); 
end half_sub;

architecture flow of half_sub is
begin

diff<= A xor B;
borrow<=not(A) and B;
end flow;
