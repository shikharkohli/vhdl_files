entity fourbitadder is
    port(xin,yin:in bit_vector(3 downto 0);
         cin: in bit;
         sout:out bit_vector(3 downto 0);
         cout:out bit);
end entity;

architecture fourbitadder_arch of fourbitadder is
    component fulladder is
        port(in1,in2,in3:in bit;out1,out2:out bit);
    end component;
    signal tc:bit_vector(2 downto 0);
    begin
    inst0:fulladder port map(xin(0),yin(0),cin,sout(0),tc(0));
    inst1:fulladder port map(xin(1),yin(1),tc(0),sout(1),tc(1));
    inst2:fulladder port map(xin(2),yin(2),tc(1),sout(2),tc(2));
    inst3:fulladder port map(xin(3),yin(3),tc(2),sout(3),cout);
end architecture;
