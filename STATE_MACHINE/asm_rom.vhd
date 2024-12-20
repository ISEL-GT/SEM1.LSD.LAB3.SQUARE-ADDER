library ieee;
use ieee.std_logic_1164.all;

-- Entity declaration for ASM chart ROM
entity asm_rom is
    port (
        address : in  std_logic_vector(4 downto 0);  -- Q2, Q1, Q0, START, STEP
        data    : out std_logic_vector(5 downto 0)   -- D2, D1, D0, RST, ENABLE, MUX
    );
end asm_rom;

-- Architecture describing ROM functionality with address decoding
architecture logicFunction of asm_rom is
begin
    data <= 
        
        "001000" when address = "00010" else
        "001000" when address = "00011" else
        
        "010100" when address = "00110" else
        "010100" when address = "00111" else
        
        "010000" when address = "01010" else
        "011000" when address = "01011" else
        
        "100010" when address = "01110" else
        "100010" when address = "01111" else
		  
        "101000" when address = "10010" else
        "100001" when address = "10011" else
        
        "010000" when address = "10110" else
        "010000" when address = "10111" else
        
		  "000000";

end logicFunction;
