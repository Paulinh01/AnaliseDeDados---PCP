-- Buscar Rank de marcas mais vendidas

SELECT
	ColorName,
	SUM(FactSales.SalesQuantity) AS TotalVendasQuantitativa
FROM
	DimStore
	LEFT JOIN FactSales
	ON DimStore.StoreKey = FactSales.StoreKey
	LEFT JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName
ORDER BY TotalVendasQuantitativa DESC