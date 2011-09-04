entity encoder_tb is
end entity;

architecture encoder_tb_arch of encoder_tb is
    component encoder is
        port(input:in bit_vector(7 downto 0);
             output:out bit_vector(2 downto 0));
    end component;
    signal inp:bit_vector(7 downto 0);
    signal op:bit_vector(2 downto 0);
    begin
        inst: encoder port map(inp,op);
        process
            begin
                inp <= "10000000";
                wait for 20 ns;
                inp <= "01000000";
                wait for 20 ns;
                inp <= "00000010";
                wait for 20 ns;
        end process;
end encoder_tb_arch;

