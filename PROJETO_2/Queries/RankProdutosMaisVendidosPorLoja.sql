-- Buscar Rank de produtos vendidos por Loja

SELECT
	DimStore.StoreKey,
	StoreName,
	ProductName,
	SUM(FactSales.SalesQuantity) AS TotalVendasQuantitativa
FROM
	DimStore
	LEFT JOIN FactSales
	ON DimStore.StoreKey = FactSales.StoreKey
	LEFT JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY DimStore.StoreKey,StoreName,ProductName
ORDER BY Storekey ASC,TotalVendasQuantitativa DESC
