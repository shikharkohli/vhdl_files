entity dfft is
end entity;

architecture dfft_arch of dfft is
    component dff is
        port(din,clk,reset:in bit;
            qout:out bit);
    end component;
    signal tdin,tclk,treset,tqout:bit;
    begin
    inst: dff port map(tdin,tclk,treset,tqout);
    process
        begin
        tdin <= '1';
        tclk <= '0';
        treset <= '0';
        wait for 20 ns;
        tclk <= '1';
        wait for 10 ns;
        tdin <= '0';
        tclk <= '1';
        end process;
end dfft_arch;
