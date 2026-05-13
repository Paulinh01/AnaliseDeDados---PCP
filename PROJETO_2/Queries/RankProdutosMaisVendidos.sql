-- Buscar Rank de produtos mais vendidas

SELECT
	ProductName,
	SUM(FactSales.SalesQuantity) AS TotalVendasQuantitativa
FROM
	DimStore
	LEFT JOIN FactSales
	ON DimStore.StoreKey = FactSales.StoreKey
	LEFT JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ProductName
ORDER BY TotalVendasQuantitativa DESC
