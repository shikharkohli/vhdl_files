library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ops_mux_tb is
end entity;

architecture ops_mux_tb_arch of ops_mux_tb is
    signal tinput,tshl,tshr,tashr,tnothing:std_logic_vector(7 downto 0);
    signal top:std_logic_vector(1 downto 0);
    signal toutput:std_logic_vector(7 downto 0);
    begin
        inst0: system port map(tinput,tshl,tshr,tashr,tnothing);
        inst1: mux4x1 port map(tshl,tshr,tashr,tnothing,top,toutput);
        process
        begin
        tinput <= "00001111";
        top <= "01";
        wait for 20 ns;
        top <= "11";
        wait for 20 ns;
        end process;
end ops_mux_tb_arch;
