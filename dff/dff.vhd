entity dff is
    port(din,clk,reset:in bit;
        qout:out bit);
end entity;

architecture dff_arch of dff is
    begin
        process (clk,reset)
        begin
            if(reset='1') then
                qout <= '0';
            elsif (clk'event and clk='1') then
                qout <= din;
            end if;
        end process;
end dff_arch;
