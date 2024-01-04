use world;

select * from city;
select * from country;

select * from city
where CountryCode = 'USA';

#Task1
#Task2


#Task3
select count(*) from city
where CountryCode = 'USA';

#Task4
select population, LifeExpectancy from country 
where Code = 'ARG';


#Task5
select max(LifeExpectancy) from country; 

select Name, LifeExpectancy  from country
order by LifeExpectancy desc limit 10;

#Task6
select name from city
where Name like 'F%' limit 25;

#Task7
select id, Name,Population from city limit 10;

#Task8
select * from city
where population > 2000000 
order by population desc;

#Task9
select name from city
where Name like 'Be%';
 
#Task10
select * from city
where population between 500000 and 1000000
order by population desc;

#Task11
select name, min(population) from city;

SELECT  name, population
FROM city
WHERE population IN (
SELECT min(population)
FROM city
);

#Task 12
select * from countrylanguage
where countrycode = 'SWE';

#Task15
select *
from city
join countrylanguage
on city.countrycode = countrylanguage.countrycode;




#Task 16
select region, sum(Population) 
from country
group by region;

#Task 17
select continent, sum(Population) 
from country
group by continent;

#Task 18
select region, continent, avg(Population) 
from country
group by  region, continent;

select * from country;

#Task 19
select continent, avg(lifeexpectancy) 
from country
group by continent;