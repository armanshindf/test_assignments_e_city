SELECT Номер_договора, Ссылка_на_пакет AS Код_ТД_Пакета, Код_ТД, Услуга
FROM ТД
WHERE Ссылка_на_пакет IS NOT NULL;