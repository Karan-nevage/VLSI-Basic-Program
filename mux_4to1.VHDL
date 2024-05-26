library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux4to1 is
     port(
         din : in STD_LOGIC_VECTOR(3 downto 0);
         sel : in STD_LOGIC_VECTOR(1 downto 0);
         dout : out STD_LOGIC
         );
end mux4to1;


architecture mux_arc of mux4to1 is
begin

    mux : process (din,sel) is
    begin
        case sel is
            when "00" => dout <= din(3);
            when "01" => dout <= din(2);
            when "10" => dout <= din(1);
            when others => dout <= din(0);
        end case;
    end process mux;

end mux_arc;
