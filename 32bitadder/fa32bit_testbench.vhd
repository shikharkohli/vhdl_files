library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity fa32bit_test is
end entity;

architecture fa32bit_test_arch of fa32bit_test is
    signal txin,tyin,tsout: std_logic_vector(31 downto 0);
    signal tcin,tcout: std_logic;
    component fa32bit is
     port(xin,yin:in std_logic_vector(31 downto 0);
          cin:in std_logic;
          cout:out std_logic;
          sout:out std_logic_vector(31 downto 0));
    end component;
    begin 
        instance: fa32bit port map(txin,tyin,tcin,tcout,tsout);
    process
        begin
            txin <= "10101010101010101010101010101010";
            tyin <= "10101010101010101010101010101010";
            tcin <= '0';
            wait for 20 ns;
            tcin <= '1';
            wait for 20 ns;
    end process;
end fa32bit_test_arch;
