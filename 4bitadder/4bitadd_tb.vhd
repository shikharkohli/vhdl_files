entity fourbitadder_tb is
end entity;

architecture fourbitadder_arch_tb of fourbitadder_tb is
    component fourbitadder is
        port(xin,yin:in bit_vector(3 downto 0);cin:in bit;sout: out bit_vector(3 downto 0);
        cout: out bit);
    end component;
    signal txin,tyin,tsout:bit_vector(3 downto 0);
    signal tcin,tcout:bit;
    begin
    inst: fourbitadder port map(txin,tyin,tcin,tsout,tcout);
    process
        begin
            txin <= "0010";
            tyin <= "0110";
            tcin <= '0';
            wait for 10 ns;
            tcin <= '1';
            wait for 10 ns;
            tyin <= "0000";
        end process;
end architecture;
