library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux4x1 is
    port(input:in std_logic_vector(3 downto 0);
        --1,input2,input3,input4:in std_logic;--_vector(3 downto 0);
         sel:in std_logic_vector(1 downto 0);
         output:out std_logic);
end entity;

architecture mux4x1_arch of mux4x1 is
    begin
    --with sel select
    output <= input(0) when sel="00" else
              input(1) when sel="01" else
              input(2) when sel="10" else
              input(3) when sel="11";-- else
              --'Z';-- when others;
end mux4x1_arch;
