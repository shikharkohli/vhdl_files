entity fulladder is
    port(x,y,cin:in bit;s,cout:out bit);
end entity;

architecture fulladder_arch of fulladder is
begin
    s <= x xor y xor cin;
    cout <= (x and y) or (y and cin) or (x and cin);
end fulladder_arch;
