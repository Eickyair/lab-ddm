library IEEE;
use IEEE.std_logic_1164.all;

entity sist_entr is
    port (
        entradas: in std_logic_vector(
            2 downto 0
        );
        display: out std_logic_vector(
            6 downto 0
        )
    );
end entity;

architecture behavioral of sist_entr is
begin
    -- 7 segment display
    -- 6 5 4 3 2 1 0
    -- g f e d c b a
    with entradas select
        display <=
            "1000000" when "000",
            "1000110" when "001",
            "0000110" when "010",
            "0000110" when "011",
            "0010010" when "100",
            "0010010" when "101",
            "0010010" when "110",
            "0010010" when "111";
end architecture;