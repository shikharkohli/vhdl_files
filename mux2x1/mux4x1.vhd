entity mux4x1 is
    port(input:in bit_vector(3 downto 0);
         sel:in bit_vector(1 downto 0);
         output:out bit);
end entity;

architecture mux4x1_arch of mux4x1 is
    begin
    output <= input(0) when sel="00" else
              input(1) when sel="01" else
              input(2) when sel="10" else
              input(3) when sel="11"; 
              --'Z' when others;
end mux4x1_arch;
