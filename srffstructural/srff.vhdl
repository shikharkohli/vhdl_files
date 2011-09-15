entity srff is
    port(r,s:inout bit;
        q,notq:inout bit);
end entity;

architecture srff_arch of srff is
    component nandgate
        port(a,b:inout bit;
             c:inout bit);
    end component;
    --signal t1,t2:bit;
    begin
    inst1: nandgate port map(r,q,notq);
    inst2: nandgate port map(s,notq,q);
end srff_arch;
