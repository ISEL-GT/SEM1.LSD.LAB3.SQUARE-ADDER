library ieee;
use ieee.std_logic_1164.all;

entity square_adder is
	port(
		 X 		: in std_logic_vector(3 downto 0);
		 Start	: in std_logic;
		 Step		: in std_logic;
		 MCLK		: in std_logic;
		 Rst     : in std_logic;
		 
		 Cy 		: out std_logic;
		 sum		: out std_logic_vector(7 downto 0);
		 HEX0, HEX1, HEX2 : out std_logic_vector(7 downto 0)
	);
end square_adder;

architecture behavioral of square_adder is
	 
	
	-- Component declaration for asm
	component asm is
		 port (  
			  MCLK       : in  std_logic;
			  RESET      : in  std_logic;
			  Q          : in  std_logic_vector(2 downto 0);
			  Start      : in  std_logic;
			  Step       : in  std_logic;
			  
			  D          : out std_logic_vector(2 downto 0);
			  Enable     : out std_logic;
			  Mux_out    : out std_logic;
			  Rst        : out std_logic
		 );
	end component;
	
	
	-- ROM for the square values
	component rom_squares is
        port (
            address : in std_logic_vector(3 downto 0);  -- 4-bit address input
            data    : out std_logic_vector(7 downto 0)   -- 8-bit output data
        );
    end component;
	 
	 
	 -- Component declaration for the 8-bit adder (adder_8bits) entity
	component adder_8bits is
		 port (
			  A : in std_logic_vector(7 downto 0);        -- 8-bit input A
			  B : in std_logic_vector(7 downto 0);        -- 8-bit input B
			  
			  carry_out : out std_logic;                  -- Carry-out output
			  result : out std_logic_vector(7 downto 0)   -- 8-bit result output
		 );
	end component;
	
	
	-- Component declaration for the registry_8bits entity
	component registry_8bits is
		 port(	
			  CLK     : in std_logic;
			  RESET   : in std_logic;
			  SET     : in std_logic;
			  D       : in std_logic_vector(7 downto 0);
			  EN      : in std_logic;
			  
			  Q_8bits : out std_logic_vector(7 downto 0)
		 );
	end component;
	
	
	-- Component declaration for an ffd entity
	component FFD is
		 port(	
			  CLK     : in std_logic;
			  RESET   : in std_logic;
			  SET     : in std_logic;
			  D       : in std_logic;
			  EN      : in std_logic;
			  
			  Q       : out std_logic
		 );
	end component;

	
	-- Component declaration for the 2x8 multiplexer (mux_2x8) entity
	component mux_2x8 is
		 port (
			  A        : in std_logic_vector(7 downto 0);
			  B        : in std_logic_vector(7 downto 0);
			  selector : in std_logic;                   
			  result   : out std_logic_vector(7 downto 0)
		 );
	end component;
	
	
	-- Component declaration for the 2x1 multiplexer (mux_2x1) entity
	component mux_2x1 is
		 port (
			  A        : in std_logic;
			  B        : in std_logic;
			  selector : in std_logic;      
			  
			  result   : out std_logic
		 );
	end component;
	
	
	-- Component declaration for decoderHex
	component decoderHex is
		 port (
			  bin   : in std_logic_vector(7 downto 0);  -- 8-bit binary input
			  clear : in std_logic;                      -- Clear signal
			  HEX0  : out std_logic_vector(7 downto 0);   -- 7-segment output for the least significant digit
			  HEX1  : out std_logic_vector(7 downto 0);   -- 7-segment output for the second digit
			  HEX2  : out std_logic_vector(7 downto 0)    -- 7-segment output for the most significant digit
		 );
	end component;

		
	signal next_state     : std_logic_vector(2 downto 0);
	signal asm_mux_output : std_logic;
	signal asm_reset      : std_logic;
	signal asm_enable     : std_logic;
	signal input_choice 	 : std_logic_vector(2 downto 0);
	
	signal squared_x       : std_logic_vector(7 downto 0);
	signal adder_output    : std_logic_vector(7 downto 0);
	signal adder_carry     : std_logic;
	signal registry_output : std_logic_vector(7 downto 0);
	
	signal mux_segment_result 	  : std_logic_vector(7 downto 0);
	signal decimal_output  : std_logic_vector(11 downto 0);
	
	
begin

	inst_asm: asm
        port map (
            MCLK       => MCLK,
            RESET      => Rst,
            Q          => next_state,
            Start      => Start,
            Step       => Step,
				
            D          => next_state,
				Enable     => asm_enable,
            Mux_out    => asm_mux_output,
            Rst        => asm_reset
        );
		  
		  
	inst_rom_squares: rom_squares
        port map (
            address => X,
            data    => squared_x
        );
		  
		  
	inst_adder_8bits: adder_8bits
		  port map (
				A => registry_output,               
				B => squared_x,   
            
				carry_out => adder_carry, 
				result => adder_output
		  );
		  
		  
	inst_registry_8bits: registry_8bits
        PORT MAP (
            CLK     => MCLK,
            RESET   => asm_reset,
            SET     => '0',
            D       => adder_output,  
            EN      => asm_enable,
            Q_8bits => registry_output
        );
		  
		  
	inst_mux_2x8: mux_2x8
        port map (
            A        => registry_output,      
            B        => squared_x,     
            selector => asm_mux_output,
            result   => mux_segment_result 
        );
		  

	inst_FFD: FFD
        PORT MAP (
            CLK     => MCLK,
            RESET   => asm_reset,
            SET     => '0',
            D       => adder_carry,  
            EN      => asm_enable,
            Q 		  => Cy
        );
		  
		  
	inst_decoderHex: decoderHex
        PORT MAP (
            bin   => mux_segment_result,
            clear => '0',
            HEX0  => HEX0,
            HEX1  => HEX1,
            HEX2  => HEX2
        );
		  
		  
	
	sum <= mux_segment_result;
   

end behavioral;