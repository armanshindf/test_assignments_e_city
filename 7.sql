/* Временная таблица будет существовать до конца сессии. Создается с помощью команды CREATE TEMPORARY TABLE, например:*/

CREATE TEMPORARY TABLE temp_table AS
SELECT *
FROM ТД
WHERE deleted = false;

/* Так же при написании подзапроса с помощью WITH ... AS в памяти создается временная таблица, но её время жизни равно времени жизни запроса*/