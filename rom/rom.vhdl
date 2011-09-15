--8x8 ROM
entity rom is
    --generic(words:integer:=8;
    --        bits:integer:=8);
    port(addr:in integer;
         data:out bit_vector(7 downto 0));
end entity;

architecture rom_arch of rom is
    type rom_array is array(0 to 7) of bit_vector(7 downto 0);
    constant memory:rom_array:=
                     ("00001111",
                      "11110000",
                      "01010101",
                      "00101011",
                      "10101111",
                      "01010111",
                      "11001100",
                      "00110011");
     begin
        data <=memory(addr);
end rom_arch;
