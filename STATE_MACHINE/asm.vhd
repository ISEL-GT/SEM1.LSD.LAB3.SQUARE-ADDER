library ieee;
use ieee.std_logic_1164.all;

-- Entity for ASM chart with inputs and outputs
entity asm is
    port (  
        MCLK       : in  std_logic;                       -- Main clock input
        RESET      : in  std_logic;                       -- Reset input
        Q          : in  std_logic_vector(2 downto 0);    -- Current state input
        Start      : in  std_logic;                       -- Start signal input
        Step       : in  std_logic;                       -- Step signal input

        D          : out std_logic_vector(2 downto 0);    -- Next state output
		  Enable	    : out std_logic;
        Rst        : out std_logic;                       -- Reset output signal (data bit 2)
		  Mux_out    : out std_logic                       -- Output signal (data bit 0)

    );
end asm;

-- Structural architecture of ASM chart
architecture structural of asm is

    -- Flip-Flop (FFD) component declaration
    component FFD is
        port (  
            CLK    : in  std_logic;                       -- Clock input
            RESET  : in  std_logic;                       -- Reset input
            SET    : in  std_logic;                       -- Set input
            D      : in  std_logic;                       -- Data input
            EN     : in  std_logic;                       -- Enable input
            Q      : out std_logic                        -- Output data
        );
    end component;

    -- ROM component declaration for ASM chart
    component asm_rom is
        port (  
            address : in  std_logic_vector(4 downto 0);   -- Address input
            data    : out std_logic_vector(5 downto 0)    -- Data output
        );
    end component;

    -- Register component declaration
    component registry_3bits is
        port (  
            CLK   : in  std_logic;                        -- Clock input
            RESET : in  std_logic;                        -- Reset input
            SET   : in  std_logic;                        -- Set input
            D     : in  std_logic_vector(2 downto 0);     -- Data input
            EN    : in  std_logic;                        -- Enable input
            Q     : out std_logic_vector(2 downto 0)      -- Output data
        );
    end component;

    -- Internal signals
    signal D2, D1, D0  : std_logic;                       -- Signals for Flip-Flop outputs
    signal address     : std_logic_vector(4 downto 0);    -- Address for ROM input
    signal data        : std_logic_vector(5 downto 0);    -- ROM data output

begin

    -- Flip-Flop instantiations for current state Q bits
    Flip_Flop_Q2 : FFD 
        port map (
            CLK   => MCLK,
            RESET => RESET,
            SET   => '0',
            D     => Q(2),
            EN    => '1',
            Q     => D2
        );

    Flip_Flop_Q1 : FFD 
        port map (
            CLK   => MCLK,
            RESET => RESET,
            SET   => '0',
            D     => Q(1),
            EN    => '1',
            Q     => D1
        );

    Flip_Flop_Q0 : FFD 
        port map (
            CLK   => MCLK,
            RESET => RESET,
            SET   => '0',
            D     => Q(0),
            EN    => '1',
            Q     => D0
        );

    -- Generate the address for ROM input
    address <= Q(2) & Q(1) & Q(0) & Start & Step;

    -- ROM instantiation to fetch next state and control signals
    ROM : asm_rom 
        port map (
            address => address,
            data    => data
        );

    -- Assign outputs based on ROM data
    D        <= data(5) & data(4) & data(3);  -- Next state output
    Rst      <= data(2);                     -- Reset output signal
    Enable   <= data(1);                     -- Enable output signal
    Mux_out  <= data(0);                     -- Mux output signal

end structural;
