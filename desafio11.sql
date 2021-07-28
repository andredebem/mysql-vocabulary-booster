SELECT c1.ContactName AS 'Nome',
       c1.Country AS 'País',
  (SELECT (COUNT(*) - 1)  -- Necessário diminuir 1 para ignorar o próprio cliente da contagem
   FROM w3schools.customers c2
   WHERE c1.Country = c2.Country) AS 'Número de compatriotas'
FROM w3schools.customers c1
ORDER BY Nome;
