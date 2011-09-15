library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity decoder2x4_tb is
end entity;

architecture decoder2x4tb_arch of decoder2x4_tb is
    signal x,y:std_logic;
    signal op:std_logic_vector(1 downto 0);
    component decoder2x4 is
        port(a,b:in std_logic;
             output:out std_logic_vector(1 downto 0));
    end component;
    begin
        inst : decoder2x4 port map(x,y,op);
    process
        begin
        x <= '1';
        y <= '0';
        wait for 20 ns;
        y <= '1';
        wait for 20 ns;
        x <= '0';
        wait for 20 ns;
    end process;
end decoder2x4tb_arch;
