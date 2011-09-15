library ieee;
use ieee.std_logic_1164.all;

entity srff_tb is
end entity;

architecture srff_tb_arch of srff_tb is
    component srff is
        port(s,r:in std_logic;
            q,notq:out std_logic);
    end component;
    signal ts,tr,tq,tnotq:std_logic;
    begin
    inst: srff port map(ts,tr,tq,tnotq);
    process
        begin
            ts <= '1';
            tr <= '0';
            wait for 20 ns;
            ts <= '0';
            tr <= '1';
            wait for 20 ns;
            ts <= '0';
            tr <= '0';
            wait for 20 ns;
            ts <= '1';
            tr <= '1';
            wait for 20 ns;
    end process;
end srff_tb_arch;
