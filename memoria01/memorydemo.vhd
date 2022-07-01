library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TBmemorydemo is
end TBmemorydemo;

architecture Behavioral of TBmemorydemo is
	COMPONENT memorydemo
	PORT(
		salida : out std_logic_vector (1 downto 0);
		direccion : in std_logic_vector (1 downto 0) 
	);
	END COMPONENT;
	
	signal direccion : std_logic_vector(1 downto 0) := (others => '0');
	
	signal salida : std_logic_vector(1 downto 0);
begin
	uut: memorydemo PORT MAP(
		salida => salida,
		direccion => direccion
	);
	
	stim_proc: process
	begin
		wait for 100 ns;
		direccion <= "00";
		
		wait for 100 ns;
		direccion <= "01";
		
		wait for 100 ns;
		direccion <= "10";
		
		wait for 100 ns;
		direccion <= "11";
		wait;
		end process;
end Behavioral;