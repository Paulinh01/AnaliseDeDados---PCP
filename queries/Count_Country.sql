-- Validador da quantidade de Países/Região
-- Validator of the number of Country/Region

SELECT
	COUNT(DISTINCT(RegionCountryName)) AS 'Number_of_Country'
FROM
	DimGeography
WHERE GeographyType = 'Country/Region'
