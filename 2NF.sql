-- 2NF

select * from pokemon_id;

create table pokemon_id (
    pokedex_number integer,
    name text);
    
insert into pokemon_id (pokedex_number, name)
select pokedex_number, name
from imported_pokemon_data;
