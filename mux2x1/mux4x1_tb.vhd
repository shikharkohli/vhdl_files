entity mux4x1_tb is
end entity;

architecture mux4x1_tb_arch of mux4x1_tb is
    component mux4x1
        port(input:in bit_vector(3 downto 0);
             sel:in bit_vector(1 downto 0);
             output:out bit);
    end component;
    signal tinp:bit_vector(3 downto 0);
    signal tsel:bit_vector(1 downto 0);
    signal toutput:bit;
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
        end process;
end mux4x1_tb_arch;
            
