-- Buscar Rank de lojas mais vendidos

SELECT
	DimStore.StoreKey,
	StoreName,
	SUM(FactSales.SalesQuantity) AS TotalVendasQuantitativa
FROM
	DimStore
	LEFT JOIN FactSales
	ON DimStore.StoreKey = FactSales.StoreKey
GROUP BY DimStore.StoreKey,StoreName
ORDER BY TotalVendasQuantitativa DESC