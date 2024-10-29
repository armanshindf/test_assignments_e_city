SELECT 
    Номер_договора,
    ARRAY_AGG(Код_ТД) AS Код_ТД,
    ARRAY_AGG(Услуга) AS Услуга
FROM ТД
WHERE deleted = false
GROUP BY Номер_договора;