entity barrel_shifter is
    port(input:in bit_vector(3 downto 0);
         sel:in bit_vector(1 downto 0);
         output:out bit_vector(3 downto 0));
end entity;

architecture barrel_shifter of barrel_shifter is
    begin
    --variable temp:bit_vector(3 downto 0);
    process (sel)
    variable temp:bit_vector(3 downto 0);
        begin
            case sel is
                when "00" =>
                    output <= input;
                when "01" =>
                    output <= input ROR 1;
                when "10" =>
                    output <= input ROR 2;
                when "11" =>
                    output <= input ROR 3;
            end case;
     end process;
end architecture;
