LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY asm_chart_reg IS
PORT(	
		CLK 				: in std_logic;
		RESET				: in std_logic;
		SET 				: in std_logic;
		D 					: in std_logic_vector(2 downto 0);
		EN					: in std_logic;
		Q					: out std_logic_vector(2 downto 0)
	);
END asm_chart_reg;

ARCHITECTURE behavioral of asm_chart_reg is

	component FFD is
      
	PORT(
		CLK 				: in std_logic;
		RESET 			: in std_logic;
		SET 				: in std_logic;
		D 					: in std_logic;			
		EN 				: in std_logic;
		Q 					: out std_logic
	);
	end component;
	
	
begin

	FFD1: FFD port map (CLK => CLK, RESET => RESET, SET => '0', EN => EN, D => D(0), Q => Q(0));
	FFD2: FFD port map (CLK => CLK, RESET => RESET, SET => '0', EN => EN, D => D(1), Q => Q(1));
	FFD3: FFD port map (CLK => CLK, RESET => RESET, SET => '0', EN => EN, D => D(2), Q => Q(2));
	
end behavioral;
