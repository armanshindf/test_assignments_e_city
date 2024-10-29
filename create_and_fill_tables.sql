DROP TABLE IF EXISTS ТД CASCADE;

CREATE TABLE ТД(
	Номер_договора INT,
    Код_ТД INT PRIMARY KEY UNIQUE,
    Услуга VARCHAR(100),
	deleted BOOLEAN,
	Ссылка_на_пакет INT
);

DROP TABLE IF EXISTS email CASCADE;

CREATE TABLE email (
	Номер_договора INT  PRIMARY KEY UNIQUE,
	e_mail VARCHAR(100)
);

INSERT INTO ТД (Номер_договора, Код_ТД, Услуга, deleted, Ссылка_на_пакет) VALUES
('111111', 1, 'ВЛ', false, NULL),
('222222', 2, 'ВЛ', false, NULL),
('222222', 3, 'ДМФ', false, NULL),
('222222', 4, 'IPTV', false, NULL),
('222222', 5, 'IPTV', true, NULL),
('222222', 6, 'Видеосервис', true, NULL),
('222222', 7, 'Видеосервис', true, NULL),
('222222', 8, 'Оборудование', true, NULL),
('222222', 9, 'КТВ', false, NULL),
('222222', 10, 'Оборудование', true, NULL),
('222222', 11, 'Оборудование', true, NULL),
('333333', 12, 'ВЛ', false, 888),
('333333', 888, 'Пакет', false, NULL),
('333333', 13, 'IPTV', false, 888),
('333333', 14, 'IPTV', false, 888),
('333333', 15, 'IPTV', false, 888),
('333333', 16, 'IPTV', false, 888),
('333333', 17, 'Оборудование', true, NULL),
('333333', 18, 'КТВ', false, NULL);

INSERT INTO email (Номер_договора, e_mail) VALUES
('111111', '111111@mail.ru'),
('333333', '333333@mail.ru');

