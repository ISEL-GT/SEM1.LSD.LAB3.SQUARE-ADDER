LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY reg IS
PORT(	
		CLK 				: in std_logic;
		RESET				: in std_logic;
		SET 				: in std_logic;
		D 					: in std_logic_vector(7 downto 0);
		EN					: in std_logic;
		Q_8bits			: out std_logic_vector(7 downto 0)
	);
END reg;

ARCHITECTURE behavioral of reg is

	component FFD is
      
	PORT(
		CLK 				: in std_logic;
		RESET 			: in STD_LOGIC;
		SET 				: in std_logic;
		D 					: in STD_LOGIC;			
		EN 				: in STD_LOGIC;
		Q 					: out std_logic
	);
	end component;
		
begin

	FFD1: FFD port map (CLK => CLK, RESET => RESET, SET => SET, EN => EN, D => D(0), Q => Q_8bits(0));
	FFD2: FFD port map (CLK => CLK, RESET => RESET, SET => SET, EN => EN, D => D(1), Q => Q_8bits(1));
	FFD3: FFD port map (CLK => CLK, RESET => RESET, SET => SET, EN => EN, D => D(2), Q => Q_8bits(2));
	FFD4: FFD port map (CLK => CLK, RESET => RESET, SET => SET, EN => EN, D => D(3), Q => Q_8bits(3));
	FFD5: FFD port map (CLK => CLK, RESET => RESET, SET => SET, EN => EN, D => D(4), Q => Q_8bits(4));
	FFD6: FFD port map (CLK => CLK, RESET => RESET, SET => SET, EN => EN, D => D(5), Q => Q_8bits(5));
	FFD7: FFD port map (CLK => CLK, RESET => RESET, SET => SET, EN => EN, D => D(6), Q => Q_8bits(6));
	FFD8: FFD port map (CLK => CLK, RESET => RESET, SET => SET, EN => EN, D => D(7), Q => Q_8bits(7));
	
end behavioral;
