SELECT p.ProductName AS 'Produto',
        MIN(d.Quantity) AS 'Mínima',
        MAX(d.Quantity) AS 'Máxima',
        ROUND(AVG(d.Quantity), 2) AS 'Média'
FROM w3schools.order_details d
INNER JOIN w3schools.products p ON p.ProductID = d.ProductID
GROUP BY p.ProductName
HAVING Média > 20
ORDER BY Média,
         Produto;
