WITH ТД_с_услугами AS (
    SELECT Номер_договора, Код_ТД, Услуга
    FROM ТД
    WHERE deleted = false
),
ТД_с_email AS (
    SELECT ТД.*, e.e_mail
    FROM ТД_с_услугами ТД
    RIGHT JOIN email e ON ТД.Номер_договора = e.Номер_договора
)
SELECT 
    Номер_договора,
    Код_ТД,
    Услуга,
    e_mail
FROM ТД_с_email;