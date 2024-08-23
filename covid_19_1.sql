use aaditya;
-- 1 who to get full data of covid ? 
select * from covid_19;
-- with the help of this query we can see all the data of the covid_19 table 
-- 2 which country has the max cases of covid_19 ?
select country , max(cases)as max_case  from covid_19 group by country limit 1;
-- with the help of this qwuery we can determine the name of the country which has most cases 
-- 3 Find the total number of cases per country ?
select country, sum(cases) from covid_19 group by country;
-- 4 List countries with more than 1000 recovered cases?
select country ,cases from covid_19 where recovered > 1000;
-- 5 list the countries with lowest cov_id cases ?
select min(cases) as lowest_cases,continent from covid_19 group by continent order by 1 limit 2; 
-- 6  List countries with missing data for tests:
select country , tests  from covid_19 where tests is null;
-- 7 Find the total population of all countries combined:
select sum(population) as total_population from covid_19 ; 
-- 8 find the total population of all the continent
select sum(population) as total_population,continent as total_population from covid_19 group by continent;
-- 9 find the cases , recoverey ,deaths and tests of each country
select country,tests , deaths, recovered, cases from covid_19 ;
-- 10 find max recoverey of continent and provide the countrys name too.
select continent , country , max(recovered) as max_recovered from covid_19 group by continent , country order by 3 desc;
-- 11 Get the average number of cases per continent:
select continent , round(avg(cases)) as avg_cases , round(avg(recovered)) as avg_recovery from covid_19 group by continent;
