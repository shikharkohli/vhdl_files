library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity decoder2x4 is
    port(a,b:in std_logic;
         output:out std_logic_vector(1 downto 0));
end entity;

architecture decoder2x4_arch of decoder2x4 is
    begin
    process(a,b)
        begin
        if a='0' and b='0' then
            output <= "00";
        end if;
        if a='0' and b='1' then
            output <= "01";
        end if;
        if a='1' and b='0' then
            output <= "10";
        end if;
        if a='1' and b='1' then
            output <= "11";
        end if;
     end process;
end decoder2x4_arch;
