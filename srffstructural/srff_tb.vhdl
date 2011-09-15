entity srff_tb is
end entity;

architecture srff_tb_arch of srff_tb is
    component srff is
        port(r,s:inout bit;
             q,notq:inout bit);
    end component;
    signal tr,ts,tq,tnotq:bit;
    begin
    inst1: srff port map(tr,ts,tq,tnotq);
    process
        begin
            tr <= '1';
            ts <= '0';
            wait for 20 ns;
            tr <= '0';
            wait for 20 ns;
            ts <= '1';
            wait for 20 ns;
     end process;
end srff_tb_arch;

