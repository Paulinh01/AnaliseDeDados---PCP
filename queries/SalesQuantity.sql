-- Validador da quantidade de vendas por Continente
-- Sales Quantity Validator by Continent

SELECT
    DimGeography.ContinentName,
    SUM(SalesQuantity) AS SomaVendida
FROM
    DimStore
    LEFT JOIN DimGeography
        ON DimGeography.GeographyKey = DimStore.GeographyKey
    LEFT JOIN FactSales
        ON DimStore.StoreKey = FactSales.StoreKey
GROUP BY DimGeography.ContinentName
ORDER BY SomaVendida DESC
