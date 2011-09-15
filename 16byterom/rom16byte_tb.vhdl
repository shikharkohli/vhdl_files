entity rom16byte_tb is
end entity;

architecture rom16byte_tb_arch of rom16byte_tb is
    component rom16byte is
        port(addr:in Integer;
             output:out bit_vector(7 downto 0));
    end component;
    signal taddr:Integer range 0 to 15;
    signal toutput:bit_vector(7 downto 0);
    begin
    inst : rom16byte port map(taddr,toutput);
        process
            begin
                taddr <= 0;
                wait for 20 ns;
                taddr <= 15;
                wait for 20 ns;
                taddr <= 13;
                wait for 20 ns;
                taddr <= 0;
                wait for 20 ns;
        end process;
end architecture;

