SELECT c1.ContactName AS 'Nome',
        c1.Country AS 'País', (COUNT(*) - 1) as 'Número de compatriotas' -- Necessário diminuir 1 para ignorar o próprio cliente da contagem
FROM w3schools.customers AS c1,
      w3schools.customers AS c2
WHERE c1.Country = c2.Country
GROUP BY c1.ContactName, c1.Country
HAVING (COUNT(*) - 1) > 0
ORDER BY Nome;
