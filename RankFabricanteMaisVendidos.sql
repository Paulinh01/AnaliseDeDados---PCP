-- Buscar Rank de fabricates mais vendidas

SELECT
	Manufacturer,
	SUM(FactSales.SalesQuantity) AS TotalVendasQuantitativa
FROM
	DimStore
	LEFT JOIN FactSales
	ON DimStore.StoreKey = FactSales.StoreKey
	LEFT JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY Manufacturer
ORDER BY TotalVendasQuantitativa DESC