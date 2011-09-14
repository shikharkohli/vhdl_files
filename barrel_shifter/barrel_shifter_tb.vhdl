entity barrel_shifter_tb is
end entity;

architecture barrel_shifter_tb_arch of barrel_shifter_tb is
    component barrel_shifter is
        port(input:in bit_vector(3 downto 0);
             sel:in bit_vector(1 downto 0);
             output: out bit_vector(3 downto 0));
    end component;
    signal tinput,toutput:bit_vector(3 downto 0);
    signal tsel:bit_vector(1 downto 0);
    begin
    tinst1 : barrel_shifter port map(tinput,tsel,toutput);
        process
            begin
            tinput <= "1010";
            tsel <= "01";
            wait for 10 ns;
        end process;
end architecture;
