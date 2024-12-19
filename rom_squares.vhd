library ieee;
use ieee.std_logic_1164.all;

-- Entity declaration for xSquare_ROM
entity rom_squares is
    port (
        address : in std_logic_vector(3 downto 0);  -- 4-bit address input
        data    : out std_logic_vector(7 downto 0)   -- 8-bit output data
    );
end rom_squares;

-- Architecture definition for ROM squares
architecture logicFunction of rom_squares is
begin
    -- Mapping address values to their respective squared values
    data <= "00000000" when address = "0000" else     -- 0^2 = 0
            "00000001" when address = "0001" else     -- 1^2 = 1
            "00000100" when address = "0010" else     -- 2^2 = 4
            "00001001" when address = "0011" else     -- 3^2 = 9
            "00010000" when address = "0100" else     -- 4^2 = 16
            "00011001" when address = "0101" else     -- 5^2 = 25
            "00100100" when address = "0110" else     -- 6^2 = 36
            "00110001" when address = "0111" else     -- 7^2 = 49
            "01000000" when address = "1000" else     -- 8^2 = 64
            "01010001" when address = "1001" else     -- 9^2 = 81
            "01100100" when address = "1010" else     -- 10^2 = 100
            "01111001" when address = "1011" else     -- 11^2 = 121
            "10010000" when address = "1100" else     -- 12^2 = 144
            "10101001" when address = "1101" else     -- 13^2 = 169
            "11000100" when address = "1110" else     -- 14^2 = 196
            "11100001" when address = "1111";          -- 15^2 = 225
end logicFunction;
