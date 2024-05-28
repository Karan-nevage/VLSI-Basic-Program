library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity full_sub is
port( A, B, C : in std_logic;
DIFF, Borrow : out std_logic);
end entity;

architecture dataflow of full_sub is
begin

DIFF <= (A xor B) xor C;
Borrow <= ((not A) and (B or C)) or (B and C);

end dataflow;
