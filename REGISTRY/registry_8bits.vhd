LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- This entity is responsible for acting as a registry, which is just a bunch of flip flops chained together
ENTITY registry_8bits IS
PORT(	
		CLK       : in std_logic;
		RESET     : in std_logic;
		SET       : in std_logic;
		D         : in std_logic_vector(7 downto 0);
		EN        : in std_logic;
		Q_8bits   : out std_logic_vector(7 downto 0)
);
END registry_8bits;


ARCHITECTURE behavioral OF registry_8bits IS

    -- Component declaration for the flip-flop (FFD)
    COMPONENT FFD IS
        PORT(
            CLK     : in std_logic;
            RESET   : in std_logic;
            SET     : in std_logic;
            D       : in std_logic;
            EN      : in std_logic;
            Q       : out std_logic
        );
    END COMPONENT;

BEGIN

    -- Instantiate the flip-flops for each bit of the 8-bit register
    FFD1: FFD
        PORT MAP (
            CLK     => CLK,
            RESET   => RESET,
            SET     => SET,
            EN      => EN,
            D       => D(0),
            Q       => Q_8bits(0)
        );
        
    FFD2: FFD
        PORT MAP (
            CLK     => CLK,
            RESET   => RESET,
            SET     => SET,
            EN      => EN,
            D       => D(1),
            Q       => Q_8bits(1)
        );

    FFD3: FFD
        PORT MAP (
            CLK     => CLK,
            RESET   => RESET,
            SET     => SET,
            EN      => EN,
            D       => D(2),
            Q       => Q_8bits(2)
        );

    FFD4: FFD
        PORT MAP (
            CLK     => CLK,
            RESET   => RESET,
            SET     => SET,
            EN      => EN,
            D       => D(3),
            Q       => Q_8bits(3)
        );

    FFD5: FFD
        PORT MAP (
            CLK     => CLK,
            RESET   => RESET,
            SET     => SET,
            EN      => EN,
            D       => D(4),
            Q       => Q_8bits(4)
        );

    FFD6: FFD
        PORT MAP (
            CLK     => CLK,
            RESET   => RESET,
            SET     => SET,
            EN      => EN,
            D       => D(5),
            Q       => Q_8bits(5)
        );

    FFD7: FFD
        PORT MAP (
            CLK     => CLK,
            RESET   => RESET,
            SET     => SET,
            EN      => EN,
            D       => D(6),
            Q       => Q_8bits(6)
        );

    FFD8: FFD
        PORT MAP (
            CLK     => CLK,
            RESET   => RESET,
            SET     => SET,
            EN      => EN,
            D       => D(7),
            Q       => Q_8bits(7)
        );

END behavioral;
