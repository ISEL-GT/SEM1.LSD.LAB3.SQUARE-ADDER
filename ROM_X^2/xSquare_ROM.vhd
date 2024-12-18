library ieee;
use ieee.std_logic_1164.all;

entity xSquare_ROM is
port(
    address : in std_logic_vector(3 downto 0);
    data	   : out std_logic_vector(7 downto 0)
);
end xSquare_ROM;

architecture logicFunction of xSquare_ROM is
begin
    data <=	"00000000" when address = "0000" else
				"00000001" when address = "0001" else
				"00000100" when address = "0010" else
				"00001001" when address = "0011" else
				"00010000" when address = "0100" else
				"00011001" when address = "0101" else
				"00100100" when address = "0110" else
				"00110001" when address = "0111" else 
				"01000000" when address = "1000" else
				"01010001" when address = "1001" else
				"01100100" when address = "1010" else
				"01111001" when address = "1011" else
				"10010000" when address = "1100" else
				"10101001" when address = "1101" else
				"11000100" when address = "1110" else
				"11100001" when address = "1111";

end logicFunction;

		
