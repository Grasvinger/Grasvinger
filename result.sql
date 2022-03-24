/* 2. SQL Select
    Vypíše číslo faktury (invoiceNumber), datum vytvoření (dateCreated) 
    a celý obsah tabulky invoiceItems (asi info ohledně faktur)
    s podmínkou, že status této faktury je "zaplaceno" (paid)
    a název začíná na "Soukoulí" s tím, že za tímto název může být libovolně prodloužen, 
    základ musí zůstat stejný. Tyto výsledky 
    jsou seřazeny dle data zaplacení sestupně. 
*/


/* 3. SQL Create */
CREATE TABLE cars(
    id int,
    barva varchar(30), 
    vin varchar(20), 
    spz varchar(10), 
    idVlastnika int, 
    datumRegistrace datetime, 
    status boolean
);

/* 4. SQL Sumace */
SELECT SUM(b.qty)
FROM invoices i inner join invoiceItems b on (i.id = b.invoiceId) left join payments p (p.id = i.id)
WHERE p.status = 'paid'
ORDER BY p.datePayment DESC

/* 5. SQL Update */
UPDATE email, age
SET email = 'barvy_laky@seznam.cz', age= 45
WHERE studentNumber = 1;

