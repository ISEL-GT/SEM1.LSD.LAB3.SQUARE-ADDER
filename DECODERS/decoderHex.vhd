LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

-- Entity declaration for Hexadecimal to BCD Decoder
entity decoderHex IS
    PORT (   
        bin     : in  std_logic_vector(7 downto 0);  -- 8-bit binary input
        clear   : in  std_logic;                      -- Clear signal
        HEX0    : out std_logic_vector(7 downto 0);   -- 7-segment output for the least significant digit
        HEX1    : out std_logic_vector(7 downto 0);   -- 7-segment output for the second digit
        HEX2    : out std_logic_vector(7 downto 0)    -- 7-segment output for the most significant digit
    );		
END decoderHex;

-- Architecture definition for Hexadecimal to BCD Decoder
ARCHITECTURE logicFunction OF decoderHex IS

    -- Component for 7-segment display decoder
    COMPONENT int7seg
        PORT(  
            d     : IN  STD_LOGIC_VECTOR(3 downto 0);  -- 4-bit input
            dOut  : OUT std_logic_vector(7 downto 0)    -- 7-segment encoded output
        );
    END COMPONENT;

    -- Component for Binary to BCD conversion
    COMPONENT bin2bcd
        PORT( 
            bin   : IN  STD_LOGIC_VECTOR(7 downto 0);    -- 8-bit binary input
            dec   : OUT STD_LOGIC_VECTOR(11 downto 0)    -- 12-bit BCD output
        );
    END COMPONENT;

    -- Internal signals
    SIGNAL HEX0t : std_logic_vector(7 downto 0);  -- Temporary signal for HEX0
    SIGNAL HEX1t : std_logic_vector(7 downto 0);  -- Temporary signal for HEX1
    SIGNAL HEX2t : std_logic_vector(7 downto 0);  -- Temporary signal for HEX2
    SIGNAL dec   : std_logic_vector(11 downto 0); -- 12-bit BCD output signal

BEGIN

    -- Clear the 7-segment displays when the 'clear' signal is '1'
    HEX0 <= HEX0t WHEN clear = '0' ELSE "11111111";
    HEX1 <= HEX1t WHEN clear = '0' ELSE "11111111";
    HEX2 <= HEX2t WHEN clear = '0' ELSE "11111111";

    -- 7-segment decoder instances for each digit
    U0: int7seg 
        PORT MAP (
            d     => dec(3 downto 0),  -- Least significant 4 bits of BCD
            dOut  => HEX0t              -- Output to HEX0
        );

    U1: int7seg 
        PORT MAP (
            d     => dec(7 downto 4),  -- Middle 4 bits of BCD
            dOut  => HEX1t              -- Output to HEX1
        );

    U2: int7seg 
        PORT MAP (
            d     => dec(11 downto 8),  -- Most significant 4 bits of BCD
            dOut  => HEX2t              -- Output to HEX2
        );

    -- Binary to BCD conversion
    U3: bin2bcd 
        PORT MAP (
            bin   => bin,  -- 8-bit binary input
            dec   => dec   -- 12-bit BCD output
        );

END logicFunction;
