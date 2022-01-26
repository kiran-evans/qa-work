USE world;

SELECT SUM(population) FROM city;

SELECT AVG(surfacearea) FROM country;
SELECT MAX(lifeexpectancy) FROM country;
SELECT MIN(gnp) FROM country;
SELECT SUM(population) FROM country;
SELECT surfacearea, region FROM country GROUP BY region;
SELECT COUNT(name) FROM country WHERE indepyear != "NULL";

SELECT name, continent, region, lifeexpectancy FROM country WHERE lifeexpectancy = (SELECT MAX(lifeexpectancy) FROM country WHERE lifeexpectancy < 75);