entity rom_tb is
end entity;

architecture rom_tb_arch of rom_tb is
    component rom
        --generic(words:integer:=8;
        --        bits:integer:=8);
        port(addr:in integer range 0 to 7;
             data:out bit_vector(7 downto 0));
    end component;
    signal taddr:integer range 0 to 7;
    signal tdata:bit_vector(8-1 downto 0);
    begin
        inst: rom port map(taddr,tdata);
        process
            begin
                taddr <= 4;
                wait for 10 ns;
                taddr <= 0;
                wait for 10 ns;
        end process;
end rom_tb_arch;
