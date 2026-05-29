# 📊 AnaliseDeDados---PCP | Data Analysis — PCP

> **PT:** Repositório de projetos de análise de dados desenvolvidos com SQL e Power BI, com foco em ambientes industriais e comerciais.  
> **EN:** Data analysis projects built with SQL and Power BI, focused on industrial and commercial environments.

---

## 👤 Autor | Author

**Paulo Wesllem de Queiroz**  
Analista de PCP | Em transição para Análise de Dados  
PCP Analyst | Transitioning to Data Analysis

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/paulo-wesllem-de-queiroz-a07791302/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/Paulinh01/AnaliseDeDados---PCP)

---

## 🛠️ Ferramentas | Tools

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat&logo=powerbi&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=microsoftsqlserver&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-217346?style=flat&logo=microsoftexcel&logoColor=white)

---

## 📁 Projetos | Projects

---

### 🗂️ PROJETO_1 — Store and Sales by Continent and Country

**PT:** Análise da distribuição de lojas e volume de vendas por continente, país e província, utilizando a base de dados Contoso.

**EN:** Analysis of store distribution and sales volume by continent, country, and province using the Contoso dataset.

#### ❓ Perguntas respondidas | Business Questions Answered

**PT:**
- Quantos continentes, países e províncias compõem a rede de lojas?
- Qual continente concentra o maior volume de vendas?
- Quais países possuem mais lojas?
- Como as vendas se distribuem geograficamente por estado e província?

**EN:**
- How many continents, countries, and provinces make up the store network?
- Which continent has the highest sales volume?
- Which countries have the most stores?
- How are sales geographically distributed by state and province?

#### 📊 Indicadores | KPIs
| Indicador | Valor |
|---|---|
| Continentes | 3 |
| Países | 35 |
| Províncias | 126 |
| Total de Vendas | 53.320.454 |

#### 🔍 Queries SQL utilizadas | SQL Queries Used

```sql
-- Total de lojas por continente
-- Total stores by continent
SELECT
    DimGeography.ContinentName,
    COUNT(StoreKey) AS TotalLojas
FROM DimStore
    LEFT JOIN DimGeography
        ON DimGeography.GeographyKey = DimStore.GeographyKey
GROUP BY DimGeography.ContinentName
ORDER BY TotalLojas DESC
```

#### 🧰 Técnicas utilizadas | Techniques Used
- `LEFT JOIN` entre múltiplas tabelas (DimStore, DimGeography, FactSales)
- Agregações: `COUNT`, `SUM`
- `GROUP BY` e `ORDER BY`
- Filtros interativos no Power BI (Continent, Country, Province, Status, Store Type)
- Treemap, gráfico de barras e tabela de ranking

---

### 🗂️ PROJETO_2 — Análise de Vendas | Sales Analysis

**PT:** Análise completa de vendas por produto, marca, cor e loja, com indicadores de custo, lucro e quantidade vendida, utilizando a base de dados Contoso.

**EN:** Full sales analysis by product, brand, color, and store, with cost, profit, and quantity sold indicators using the Contoso dataset.

#### ❓ Perguntas respondidas | Business Questions Answered

**PT:**
- Qual o total vendido, custo e margem de lucro geral?
- Quais marcas possuem maior volume de produtos?
- Quais cores de produto geram mais vendas?
- Quais lojas vendem mais em quantidade?
- Como as vendas se distribuem por classe de produto (Economy, Regular, Deluxe)?
- Quais produtos individuais lideram em volume vendido?

**EN:**
- What are the total sales, cost, and profit margin?
- Which brands have the highest product volume?
- Which product colors generate the most sales?
- Which stores sell the most by quantity?
- How are sales distributed by product class (Economy, Regular, Deluxe)?
- Which individual products lead in sales volume?

#### 📊 Indicadores | KPIs
| Indicador | Valor |
|---|---|
| Total Vendido | R$ 12.413.657.609 |
| Total de Custo | R$ 5.364.896.602 |
| Lucro (%) | 43,22% |
| Total de Produtos | 2.516 |

#### 🔍 Queries SQL utilizadas | SQL Queries Used

```sql
-- Rank de produtos mais vendidos
-- Best-selling products ranking
SELECT
    ProductName,
    SUM(SalesQuantity) AS TotalVendasQuantitativa
FROM FactSales
    LEFT JOIN DimProduct
        ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ProductName
ORDER BY TotalVendasQuantitativa DESC

-- Rank de cores mais vendidas
-- Best-selling colors ranking
SELECT
    ColorName,
    SUM(SalesQuantity) AS TotalVendasQuantitativa
FROM FactSales
    LEFT JOIN DimProduct
        ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName
ORDER BY TotalVendasQuantitativa DESC

-- Rank de lojas por quantidade vendida
-- Stores ranking by quantity sold
SELECT
    DimStore.StoreKey,
    StoreName,
    SUM(SalesQuantity) AS TotalVendasQuantitativa
FROM DimStore
    LEFT JOIN FactSales
        ON DimStore.StoreKey = FactSales.StoreKey
GROUP BY DimStore.StoreKey, StoreName
ORDER BY TotalVendasQuantitativa DESC
```

#### 🧰 Técnicas utilizadas | Techniques Used
- `LEFT JOIN` entre FactSales, DimProduct e DimStore
- Agregações: `SUM`, `COUNT`
- `GROUP BY` e `ORDER BY DESC`
- Filtros interativos: Produto, Cor, Marca, Classe, Fabricação, Preço, Loja
- Gráfico de barras, gráfico de rosca, radar chart e tabela de ranking

---

## 📈 Roadmap de estudos | Learning Roadmap

| Skill | Status |
|---|---|
| Excel Avançado | ✅ Concluído |
| Power BI + DAX | ✅ Concluído |
| SQL Fundamentos | 🔄 Em andamento |
| Python para Dados | 🔲 Próxima etapa |
| Git & GitHub | 🔄 Em andamento |

---

*Última atualização | Last updated: Mai/2026*
