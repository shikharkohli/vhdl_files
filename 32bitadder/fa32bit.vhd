library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity fa32bit is
    port(xin,yin:in std_logic_vector(31 downto 0);
         cin:in std_logic;
         cout:out std_logic;
         sout:out std_logic_vector(31 downto 0));
end fa32bit;

architecture fa32bit_arch of fa32bit is
    signal tsum:std_logic_vector(32 downto 0);
    begin
        tsum <= '0'&xin + yin + cin;
        cout <= tsum(32);
        sout <= tsum(31 downto 0);
end fa32bit_arch;
