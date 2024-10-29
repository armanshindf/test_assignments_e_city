SELECT ТД.*, e.e_mail
FROM ТД
LEFT JOIN email e ON ТД.Номер_договора = e.Номер_договора;