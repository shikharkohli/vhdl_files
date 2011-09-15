library ieee;
use ieee.std_logic_1164.all;

entity mux4x1_tb is
end entity;

architecture mux4x1_tb_arch of mux4x1_tb is
    component mux4x1
        port(input:in std_logic_vector(3 downto 0);
             sel:in std_logic_vector(1 downto 0);
             output:out std_logic);
    end component;
    signal tinp:std_logic_vector(3 downto 0);
    signal tsel:std_logic_vector(1 downto 0);
    signal toutput:std_logic;
    begin
    inst : mux4x1 port map(tinp,tsel,toutput);
        process
            begin
                tinp <= "0101";
                tsel <= "00";
                wait for 20 ns;
                tsel <= "01";
                wait for 20 ns;
                tsel <= "10";
                wait for 20 ns;
                tsel <= "11";
                wait for 20 ns;
        end process;
end mux4x1_tb_arch;
            
