-- 3NF

select * from types
order by pokedex_number asc;

drop table types;

create table types (
    pokedex_number integer,
    type text not null );
    
-- Use type table to get types from both columns
insert into types (pokedex_number, type)
select pokedex_number, type1 AS type
from imported_pokemon_data
union all
select pokedex_number, type2 AS type
from imported_pokemon_data;

-- Create table for against 
select * from against_types
order by pokedex_number asc;

create table against_types (
pokedex_number integer, 
type text, 
damagefactor integer);


-- add in all separete abilities and scores
insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'bug', against_bug
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'dark', against_dark
from imported_pokemon_data ; 


insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'dragon', against_dragon
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'electric', against_electric
from imported_pokemon_data ;

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'fairy', against_fairy
from imported_pokemon_data ;  

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'fight', against_fight
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'fire', against_fire
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'flying', against_flying
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'ghost', against_ghost
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'grass', against_grass
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'ground', against_ground
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'ice', against_ice
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'normal', against_normal
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'poison', against_poison
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'psychic', against_psychic
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'rock', against_rock
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'steel', against_steel
from imported_pokemon_data ; 

insert into against_types(pokedex_number, type, damagefactor)
select pokedex_number, 'water', against_water
from imported_pokemon_data ; 
