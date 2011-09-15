entity nandgate is
    port(a,b:inout bit;
         c:inout bit);
end entity;

architecture nandgate_arch of nandgate is
    begin
        c <= a nand b;
end nandgate_arch;
