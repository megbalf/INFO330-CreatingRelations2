select * from imported_pokemon_data;

--FNM code


CREATE TABLE pokemon_abilities AS 
-- pulls the right columns for new table 
WITH x(pokedex_number, firstone, rest) AS 
(SELECT pokedex_number, substr(abilities, 1, instr(abilities, ',')-1) 
    AS firstone, substr(abilities, instr(abilities, ',')+1) 
    AS rest 
    FROM imported_pokemon_data WHERE abilities LIKE "%,%"
    -- This is grabbing all of the information from the original table
UNION ALL
     SELECT pokedex_number, substr(rest, 1, instr(rest, ',')-1) 
     AS firstone, substr(rest, instr(rest, ',')+1) 
     AS rest FROM x 
     WHERE rest LIKE "%,%"
     -- This determines the pokemons that have multiple abilities 
)
-- This creates the new list with abilities separate 
SELECT pokedex_number, 
REPLACE(REPLACE(REPLACE(firstone, '[',''), ']', ''),'''', '') 
FROM x UNION ALL SELECT 
pokedex_number, REPLACE(REPLACE(REPLACE(rest, '[',''), ']', ''),'''', '') 
FROM x WHERE rest NOT LIKE "%,%" 
ORDER BY pokedex_number;

select * from pokemon_abilities;