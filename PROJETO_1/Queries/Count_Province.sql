-- Validador da quantidade de estado/província
-- Validator of the number of State/Province

SELECT
	COUNT(DISTINCT(StateProvinceName)) AS 'State/Province'
FROM
	DimGeography
WHERE GeographyType = 'State/Province'
