LIBRARY ieee;
USE ieee.std_logic_1164.all;


--falta terminar



ENTITY asm_chart IS
PORT(	
		MCLK 				: in std_logic;
		RESET				: in std_logic;
		SET 				: in std_logic;
		Q 					: in std_logic_vector(2 downto 0);
		EN					: in std_logic;
		Start				: in std_logic;
		Step 				: in std_logic;
		
		D					: out std_logic_vector(2 downto 0);
		Mux_out 			: out std_logic;
		Rst	 			: out std_logic;
		Enable 			: out std_logic
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
			address : in std_logic_vector(4 downto 0);
         data    : out std_logic_vector(5 downto 0)
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
end component;

signal D2, D1, D0 : std_logic;
signal address : std_logic_vector(4 downto 0);
signal data : std_logic_vector(5 downto 0);

begin

    -- Flip-Flop's
	 Filp_Flop_Q2: FFD port map( CLK => MCLK, RESET => reset, SET => '0', D => Q(2), EN => '1', Q => D2);
    Filp_Flop_Q1: FFD port map( CLK => MCLK, RESET => reset, SET => '0', D => Q(1), EN => '1', Q => D1);
    Filp_Flop_Q0: FFD port map( CLK => MCLK, RESET => reset, SET => '0', D => Q(0), EN => '1', Q => D0);
	 
    -- Generate the address to get the next state
    address <= Q(2) & Q(1) & Q(0) & Start & Step;
    ROM : asm_chart_rom port map( address => address, data => data);
	 
	 -- Generate outputs
	 D 				<= data(5) & data(4) & data(3);
	 Rst 				<= data(2);
	 Enable 			<= data(1);
    Mux_out   		<= data(0);
	 
	 
end structural;
