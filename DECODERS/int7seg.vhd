library ieee;
use ieee.std_logic_1164.all;

-- Entity for a 7-segment display decoder.
-- It takes a 4-bit input and outputs the corresponding 7-segment encoding.
entity int7seg is
    port (
        d     : in  std_logic_vector(3 downto 0);  -- 4-bit input to decode
        dOut  : out std_logic_vector(7 downto 0)    -- 7-segment encoded output
    );
end int7seg;

-- Architecture defining the logic for decoding the 4-bit input into 7-segment representation.
architecture logicFunction of int7seg is
begin
    -- Assign the 7-segment display pattern based on the input value
    dOut <= "11000000" when d = "0000" else  -- 0
            "11111001" when d = "0001" else  -- 1
            "10100100" when d = "0010" else  -- 2
            "10110000" when d = "0011" else  -- 3
            "10011001" when d = "0100" else  -- 4
            "10010010" when d = "0101" else  -- 5
            "10000010" when d = "0110" else  -- 6
            "11111000" when d = "0111" else  -- 7
            "10000000" when d = "1000" else  -- 8
            "10011000" when d = "1001" else  -- 9
            "10001000" when d = "1010" else  -- A
            "10000011" when d = "1011" else  -- B
            "11000110" when d = "1100" else  -- C
            "10100001" when d = "1101" else  -- D
            "10000110" when d = "1110" else  -- E
            "10001110";                      -- F
end logicFunction;
