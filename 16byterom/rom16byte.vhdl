entity rom16byte is
    port(addr : in Integer;--bit_vector(3 downto 0);
         output : out bit_vector(7 downto 0));
end entity;

architecture rom16byte_arch of rom16byte is
    type mem is array(15 downto 0) of bit_vector(7 downto 0);
    constant memory:mem:=("10000001",
                          "10101010",
                          "01010101",
                          "00001111",
                          "11110000",
                          "11001100",
                          "00110011",
                          "00011101",
                          "00000000",
                          "00000000",
                          "00000000",
                          "00000000",
                          "00000000",
                          "00000000",
                          "00000000",
                          "00000000");
    begin
        output <= memory(addr);
end rom16byte_arch;
