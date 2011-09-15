--SR flipflop (NAND gates)
library ieee;
use ieee.std_logic_1164.all;

entity srff is
    port(s,r:in std_logic;
         q,notq:out std_logic);
end entity;

architecture srff_arch of srff is
    begin
    process(s,r)
    begin
        if(s='0' and r='1') then
            q <= '1';
            notq <= '0';
        end if;
        if(s='1' and r='0') then
            q <= '0';
            notq <= '1';
        end if;
        if(s='1' and r='1') then
            q <= 'Z';
            notq <= 'Z';
        end if;
    end process;
end architecture;

