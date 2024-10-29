SELECT ТД.Номер_договора, ТД.Код_ТД, e.e_mail
FROM ТД
LEFT JOIN email e ON ТД.Номер_договора = e.Номер_договора
WHERE e.e_mail IS NULL;