library ieee;
use ieee.std_logic_1164.all;

-- Entity declaration for ASM chart ROM
entity asm_rom is
    port (
        address : in  std_logic_vector(4 downto 0);  -- 5-bit input address
        data    : out std_logic_vector(5 downto 0)    -- 6-bit output data
    );
end asm_rom;

-- Architecture describing ROM functionality with address decoding
architecture logicFunction of asm_rom is
begin
    data <= 
        "000000" when address = "00000" else
        "000000" when address = "00001" else
        
        "001000" when address = "00010" else
        "001000" when address = "00011" else
        
        "010100" when address = "00100" else
        "010100" when address = "00101" else
        "010100" when address = "00110" else
        "010100" when address = "00111" else
        
        "010000" when address = "01000" else
        "011000" when address = "01001" else
        "010000" when address = "01010" else
        "011000" when address = "01011" else
        
        "100010" when address = "01100" else
        "100010" when address = "01101" else
        "100010" when address = "01110" else
        "100010" when address = "01111" else
        
        "101000" when address = "10000" else
        "100001" when address = "10001" else
        "101000" when address = "10010" else
        "100001" when address = "10011" else
        
        "000000" when address = "10100" else
        "000000" when address = "10101" else
        "010000" when address = "10110" else
        "010000" when address = "10111" else
        
        "000000" when address = "11000" else
        "000000" when address = "11001" else
        "000000" when address = "11010" else
        "000000" when address = "11011" else
        "000000" when address = "11100" else
        "000000" when address = "11101" else
        "000000" when address = "11110" else
        "000000" when address = "11111";

end logicFunction;
