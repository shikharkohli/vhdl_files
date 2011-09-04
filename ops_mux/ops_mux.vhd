library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity system is
    port(input:in std_logic_vector(7 downto 0);
        shleft,shright,ashright,nochange:out std_logic_vector(7 downto 0));
end entity;

architecture system_arch of system is
    --signal shleft_arch,shright_arch,ashright_arch,nochange_arch:std_logic_vector(7 downto 0);
    signal temp:std_logic_vector(8 downto 0);
    begin
        process
        begin
          temp <= '0'&input;
          --temp(8) <= '0';
          shright <= temp(8 downto 1);
          shleft <= '0'&input(6 downto 0);
          nochange <= input;
          ashright(7) <= input(7);
          ashright(6) <= input(7);
          ashright(5 downto 0) <= input(5 downto 0);
       end process;
end system_arch;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux4x1 is
    port(inp1,inp2,inp3,inp4:in std_logic_vector(7 downto 0);
         op:in std_logic_vector(1 downto 0);
         out1:out std_logic_vector(7 downto 0));
end entity;

architecture mux4x1_arch of mux4x1 is
    begin
    process
        begin
        if(op="00") then
            out1 <= inp1;
        end if;
        if(op="01") then
            out1 <= inp2;
        end if;
        if(op="10") then
            out1 <= inp3;
        end if;
        if(op="11") then
            out1 <= inp4;
        end if;
   end process;
end mux4x1_arch;

