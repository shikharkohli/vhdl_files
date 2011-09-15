entity encoder is
    port(input:in bit_vector(7 downto 0);
         output: out bit_vector(2 downto 0));
end entity;

architecture encoder_arch of encoder is
    begin
        process (input)
        begin
            if input(0)='1' then
                output <= "000";
            end if;
            if input(1)='1' then
                output <= "001";
            end if;
            if input(2)='1' then
                output <= "010";
            end if;
            if input(3)='1' then
                output <= "011";
            end if;
            if input(4)='1' then
                output <= "100";
            end if;
            if input(5)='1' then
                output <= "101";
            end if;
            if input(6)='1' then
                output <="110";
            end if;
            if input(7)='1' then
                output <= "111";
            end if;
      end process;
end encoder_arch;
