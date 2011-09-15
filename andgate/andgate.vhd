entity andgate is
    port(a,b:in bit;c:out bit);
end entity;

architecture andgate_arch of andgate is
    signal x,y,z:bit;
    component andgate is
        port(a,b:in bit;c:out bit);
    end component;
    begin
    inst: andgate port map(x,y,z);
    process
    begin
        z <= x and y;
    end process;
end andgate_arch;
