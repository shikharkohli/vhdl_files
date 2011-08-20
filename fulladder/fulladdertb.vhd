entity fulladder_tb is
end fulladder_tb;

architecture fulladder_tb_arch of fulladder_tb is
    component fulladder is
        port(x,y,cin:in bit;s,cout:out bit);
    end component;
    signal ain,bin,carryin,sum,carryout:bit;
    begin
        inst0: fulladder port map(ain,bin,carryin,sum,carryout);
    process
        begin
            ain <= '0';
            bin <= '0';
            carryin <= '1';
            wait for 20 ns;
            bin <= '1';
            wait for 20 ns;
    end process;
end fulladder_tb_arch;
