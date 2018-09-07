library ieee ;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

-----------------------------------------------------

entity LAB2 is
port(
	clk : in std_logic;	--Reloj del sistema						--PINY2
	
	ps2_data    :   in std_logic;				-- Informacion enviada por el teclado
	ps2_clock : in  std_logic;	  --Reloj del teclado
	
	reset : in std_logic;			--		sw que permite reiniciar los valores del altera							
	key : out std_logic_vector(10 downto 0);  --Vector que almacena los valores amostrar en los LEDs
	disp1: out std_logic_vector(6 downto 0);	--Vector que almacena el primer digito del scanCode  --HEX0
	disp2: out std_logic_vector(6 downto 0);	--Vector que almacena el segundo digito del scan Code	--HEX1
	
	lcd:		out std_logic_vector(7 downto 0);  --LCD data pins
	enviar : out std_logic;    --Send signal
	rs:		out std_logic;    --Data or command
	rw: out std_logic    --read/write
);
end LAB2;

-----------------------------------------------------

architecture PS2 of LAB2 is

	type state_type is (encender, configpantalla,encenderdisplay, limpiardisplay, configcursor,listo,fin,  home, saltoLinea);    --Define dfferent states to control the LCD
	signal estado: state_type; -- Controla el estado del LCD
	signal i : integer := 0;  -- Controla la lectura de la informacion enviada por el teclado
	signal code : std_logic_vector(10 downto 0); --Almacena de manera temporal los datos enviados por el teclado
	signal char : std_logic_vector(7 downto 0) := "00000000"; --Almacena el codigo ASCII del scan Code que sera mostrado en el LCD

	signal letDif : std_logic := '1'; -- Signal que conmuta cada vez que se lee un scancode del teclado y ayuda
														--	a que solo se muestre en el LCD el scan code cuando se muestra

	constant milisegundos: integer := 50000;
	constant microsegundos: integer := 50;

	
	function num2ascii(num: std_logic_vector(7 downto 0))
		return std_logic_vector is
		variable ascii : std_logic_vector(7 downto 0);
		begin
			case num is
				when X"1C"  => ascii := "01000001";--A
				when X"32"  => ascii := "01000010";--B
				when X"21"  => ascii := "01000011";--C
				when X"23"  => ascii := "01000100";--D
				when X"24"  => ascii := "01000101";--E
				when X"2B"  => ascii := "01000110";--F
				when X"34"  => ascii := "01000111";--G
				when X"33"  => ascii := "01001000";--H
				when X"43"  => ascii := "01001001";--I
				when X"3B"  => ascii := "01001010";--J
				when X"42"  => ascii := "01001011";--K
				when X"4B"  => ascii := "01001100";--L
				when X"3A"  => ascii := "01001101";--M
				when X"31"  => ascii := "01001110";--N
				when X"44"  => ascii := "01001111";--O
				when X"4D"  => ascii := "01010000";--P
				when X"15"  => ascii := "01010001";--Q
				when X"2D"  => ascii := "01010010";--R
				when X"1B"  => ascii := "01010011";--S
				when X"2C"  => ascii := "01010100";--T
				when X"3C"  => ascii := "01010101";--U
				when X"2A"  => ascii := "01010110";--V
				when X"1D"  => ascii := "01010111";--W
				when X"22"  => ascii := "01010111";--Y
				when X"35"  => ascii := "01011001";--X
				when X"1A"  => ascii := "01011010";--Z
				when X"45"  => ascii := "00110000";--0
				when X"16"  => ascii := "00110001";--1
				when X"1E"  => ascii := "00110010";--2
				when X"26"  => ascii := "00110011";--3
				when X"25"  => ascii := "00110100";--4
				when X"2E"  => ascii := "00110101";--5
				when X"36"  => ascii := "00110110";--6
				when X"3D"  => ascii := "00110111";--7
				when X"3E"  => ascii := "00111000";--8
				when X"46"  => ascii := "00111001";--9	
				when X"29"  => ascii := "00100000";--Espacio
				when others => ascii := "00000000";-- null
			end case;
		return std_logic_vector(ascii);
	end num2ascii;
	
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

  comb_logic: process(clk,char)
  variable contar, num: integer := 0;
  begin
	if (clk'event and clk='1') then
	  case estado is
	    when encender =>
		  if (contar < 50*milisegundos) then    --Wait for the LCD to start all its components
				contar := contar + 1;
				estado <= encender;
			else
				enviar <= '0';
				contar := 0; 
				estado <= configpantalla;
			end if;
			--From this point we will send diffrent configuration commands as shown in class
			--You should check the manual to understand what configurations we are sending to
			--The display. You have to wait between each command for the LCD to take configurations.
	    when configpantalla =>
			if (contar = 0) then
				contar := contar +1;
				rs <= '0';
				rw <= '0';
				lcd <= "00111000";
				enviar <= '1';
				estado <= configpantalla;
			elsif (contar < 1*milisegundos) then
				contar := contar + 1;
				estado <= configpantalla;
			else
				enviar <= '0';
				contar := 0;
				estado <= encenderdisplay;
			end if;
	    when encenderdisplay =>
			if (contar = 0) then
				contar := contar +1;
				lcd <= "00001111";				
				enviar <= '1';
				estado <= encenderdisplay;
			elsif (contar < 1*milisegundos) then
				contar := contar + 1;
				estado <= encenderdisplay;
			else
				enviar <= '0';
				contar := 0;
				estado <= limpiardisplay;
			end if;
	    when limpiardisplay =>	
			if (contar = 0) then
				contar := contar +1;
				rs<='0';
				rw<='0';
				lcd <= "00000001";				
				enviar <= '1';
				estado <= limpiardisplay;
			elsif (contar < 1*milisegundos) then
				contar := contar + 1;
				estado <= limpiardisplay;
			else
				enviar <= '0';
				contar := 0;
				estado <= configcursor;
			end if;
	    when configcursor =>	
			if (contar = 0) then
				contar := contar +1;
				lcd <= "00000100";				
				enviar <= '1';
				estado <= configcursor;
			elsif (contar < 1*milisegundos) then
				contar := contar + 1;
				estado <= configcursor;
			else
				enviar <= '0';
				contar := 0;
				estado <= listo;
			end if;
				
---------------------------------------------------------------------------------------------------------------------------------------	
				
		when saltoLinea =>
			if (contar = 0) then
				rs <= '1';
				rw <= '0';
				enviar <= '1';
				lcd <= X"20"; -- "00100000"
				num := num + 1;
				contar := contar +1;
				estado <= saltoLinea;
--				<='0';
			elsif (contar < 1*milisegundos) then
				contar := contar + 1;
				estado <= saltoLinea;
			else
				enviar <= '0';
				contar := 0;
				if(num < 40)then
					estado<= saltoLinea;
				else
					estado <= fin;
				end if;
			end if;

		when home =>
			if(contar=0)then
				rs<='0';
				rw<='0';
				contar:=contar+1;
				lcd<= "00000010";
				num := 0;
				enviar<='1';
				estado<=home;
			elsif (contar < 1*milisegundos) then
				contar := contar + 1;
				estado <= home;
			else
				enviar <= '0';
				contar := 0;
				estado <= listo;
			end if;
				
---------------------------------------------------------------------------------------------------------------------------------------	
			
			
			--The display is now configured now it you just can send data to de LCD 
			--In this example we are just sending letter A, for this project you
			--Should make it variable for what has been pressed on the keyboard.
	    when listo =>	
			if (contar = 0 and char /= "00000000" and code(8 downto 1) /= X"F0" and letDif = '0') then
				rs <= '1';
				rw <= '0';
				enviar <= '1';
				lcd <= char; -- ascii de A
				num := num + 1;
				contar := contar +1;
				estado <= listo;
--				<='0';
			elsif (contar < 1*milisegundos) then
				contar := contar + 1;
				estado <= listo;
			else
				enviar <= '0';
				contar := 0;
				estado <= fin;
			end if;
			
			
		  when fin =>
			if (reset = '1')then
				num := 0;
				estado <= limpiardisplay;
			elsif(num=16)then
				estado<=saltoLinea;
			elsif(num=56) then
				estado<=home;
			elsif(i=10) then -- letDif = '1'          and code(8 downto 1) /= X"F0") then
				estado <= listo;
			else
				estado<= fin;
--				if(letDif='1')then
--					<='1';
--				end if;
			end if;
	    when others =>
			estado <= encender;
	  end case;
	end if;
 end process;
					
		
    -- cocurrent process#1: Proceso que se encarga del reset y el cambio entre estados
    state_reg: process(ps2_clock, reset)
    begin
		if (reset = '1') then
			i<=0;
			disp1<=num2disp(X"0");
			disp2<=num2disp(X"0");
			letDif<='1';
			key<=(others=>'0');
			char<=X"00";
		elsif (ps2_clock' event and ps2_clock = '0') then
			
			code(i)<=ps2_data;			
			i<=i+1;
			
			if(i=10) then
				
				if (code(8 downto 1) /= X"F0" ) then
					if(letDif = '1') then
						disp1<=num2disp(code(4 downto 1));
						disp2<=num2disp(code(8 downto 5));
						char<=num2ascii(code(8 downto 1));
						key<=code;
					end if;
					letDif<= not letDif;
--					letDif<= '0';
				end if;
				
				i<=0;
			end if;
		end if;
	end process;
	

end PS2;
