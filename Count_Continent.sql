-- Validador da quantidade de continentes
-- Validator of the number of continents

SELECT
	COUNT(Distinct(ContinentName)) As 'Number_of_Continents'
FROM
	DimGeography