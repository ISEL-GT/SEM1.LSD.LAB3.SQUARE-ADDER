LIBRARY ieee;
USE ieee.std_logic_1164.all;


--falta terminar



ENTITY asm_chart IS
PORT(	
		MCLK 				: in std_logic;
		RESET				: in std_logic;
		SET 				: in std_logic;
		D 					: in std_logic_vector(2 downto 0);
		EN					: in std_logic;
		Q					: out std_logic_vector(2 downto 0)
		CLk				: out std_logic_vector;
	);
END asm_chart;


Architecture structural of asm_chart is

component FFD is
    port( 
			CLK    : in std_logic;
         RESET  : in STD_LOGIC;
         SET    : in std_logic;
         D      : IN STD_LOGIC;
         EN     : IN STD_LOGIC;
         Q      : out std_logic
    );
end component;

component asm_chart_rom is
    port( 
			address : in std_logic_vector(5 downto 0);
         data    : out std_logic_vector(3 downto 0)
    );
end component;

component asm_chart_reg is
	port(	
		  CLK 				: in std_logic;
		  RESET				: in std_logic;
		  SET 				: in std_logic;
		  D 					: in std_logic_vector(2 downto 0);
		  EN					: in std_logic;
		  Q					: out std_logic_vector(2 downto 0)
	);
end asm_chart_reg;

signal D2, D1, D0, Q2, Q1, Q0 : std_logic;
signal address : std_logic_vector(5 downto 0);
signal data : std_logic_vector(3 downto 0);

begin

    -- Flip-Flop's
	 Filp_Flop_Q2: FFD port map( MCLK => clk, RESET => reset, SET => '0', D => D2, EN => '1', Q => Q2);
    Filp_Flop_Q1: FFD port map( MCLK => clk, RESET => reset, SET => '0', D => D1, EN => '1', Q => Q1);
    Filp_Flop_Q0: FFD port map( MCLK => clk, RESET => reset, SET => '0', D => D0, EN => '1', Q => Q0);

    -- Generate Next State
    -- ROM
    address <= Q2 & Q1 & Q0 & B & Sopen & Sclose & Spresence;

    ROM : garageDoorController_ROM port map( address => address, data => data);

    D1 <= data(3);
    D0 <= data(2);

    -- Generate outputs
    mux_decoder   <= data(1);
    OPENclose 		<= data(0);

end structural;
