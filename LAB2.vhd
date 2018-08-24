library ieee ;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

-----------------------------------------------------

entity LAB2 is
port(
	clk : in std_logic;	--Reloj del sistema						--PINY2
	clkLED : out std_logic; 
	ps2_data    :   in std_logic;				--Permite que el conteo avance	  					--sw16
	ps2_clock : in  std_logic;			
	reset : in std_logic;			--									
	key : out std_logic_vector(10 downto 0);
	disp1: out std_logic_vector(6 downto 0);	--Vector que almacena el primer digito del conteo		--HEX0
	disp2: out std_logic_vector(6 downto 0)	--Vector que almacena el segundo digito del conteo		--HEX1
);
end LAB2;

-----------------------------------------------------

architecture PS2 of LAB2 is

	 type state_type is (idle, dps , load);
	signal next_state, current_state : state_type;
	signal i : integer := 0;
	signal code : std_logic_vector(10 downto 0);
	
	signal prescaler : unsigned(27 downto 0); -- Permite el cambio de frecuencia entre nuestro reloj y el del sistema
	signal clk_2Hz_i : std_logic;
	 
	-- Funcion que permite tranformar un numero Hexadecimal a un array que
	 function num2disp(cs : std_logic_vector(3 downto 0)) 
	 	return std_logic_vector is
		VARIABLE disp : std_logic_vector(6 downto 0);
		begin
			case cs is
				when X"0" => disp := "1000000";	
				when X"1" => disp := "1111001";	
				when X"2" => disp := "0100100";	
				when X"3" => disp := "0110000";					
				when X"4" => disp := "0011001";					
				when X"5" => disp := "0010010";					
				when X"6" => disp := "0000010";				
				when X"7" => disp := "1111000";				
				when X"8" => disp := "0000000";				
				when X"9" => disp := "0011000";					
				when X"A" => disp := "0001000";					
				when X"B" => disp := "0000011";
				when X"C" => disp := "1000110";
				when X"D" => disp := "0100001";
				when X"E" => disp := "0000110";
				when X"F" => disp := "0001110";
			end case;
			return std_logic_vector(disp);
		end num2disp;


begin

	--Proceso que usa el reloj del sistema y ajusta el conteo a la frecuencia deseada
	gen_clk : process (clk, reset)
	  begin  -- process gen_clk
		 if reset = '1' then
			clk_2Hz_i   <= '0';
			prescaler   <= (others => '0');
		 elsif rising_edge(clk) then   -- rising clock edge
		 
--				pre<=X"0BEBC20"; -- Valor para el Altera

			if prescaler = X"2FAF080" then     -- 12 500 000 in hex
			  prescaler   <= (others => '0');
			  clk_2Hz_i   <= not clk_2Hz_i;
			else
			  prescaler <= prescaler + "1";
			end if;
		 end if;
	  end process gen_clk;

	clkLED <= clk_2Hz_i;
					
    
    -- cocurrent process#1: Proceso que se encarga del reset y el cambio entre estados
    state_reg: process(ps2_clock, reset)
    begin
		if reset = '1' then
			i<=0;
			disp1<=num2disp(X"0");
			disp2<=num2disp(X"0");
--			filter_reg <= (others => 'O');
--			f_ps2c_reg<= '0' ;
		elsif (ps2_clock' event and ps2_clock = '0') then
		
			if (i>10)then
				i<=0;
			end if;
		
			key(i)<=ps2_data;
			code(i)<=ps2_data;
			
			i<=i+1;
			
			if(i=10) then
				disp1<=num2disp(code(4 downto 1));
				disp2<=num2disp(code(8 downto 5));
--				i <= 0;
			end if;
			
			
			
--			current_filter<= next_filter;
--			f_ps2c_reg <= f_ps2c_next ;
		end if;
	end process;
	
	
--	next_filter<=ps2c & current_filter(7 downto 1);
	

end PS2;