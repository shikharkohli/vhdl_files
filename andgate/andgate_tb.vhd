entity andgate_tb is
end entity;

architecture andgate_tb_arch of andgate_tb is
    signal ta,tb,tc:bit;
    component andgate is
        port(a,b:in bit;c:out bit);
    end component;
    begin
    inst: andgate port map(ta,tb,tc);
    process
    begin
        ta <= '0';
        tb <= '1';
        wait for 20 ns;
        ta <= '1';
        wait for 20 ns;
    end process;
end andgate_tb_arch;
