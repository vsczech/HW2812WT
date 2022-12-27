-- 2. Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. 
-- В таблице должно быть четыре поля: id, name, age, address. 
-- Все поля в таблице обязательны для заполнения.
-- Необходимо добавить 5-10 одногруппников в данную таблицу.
-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), 
-- которые живут в Москве и их возраст находится в диапазоне [18, 30) лет.


-- create
CREATE TABLE  GROUPMATES(
  gmId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  adress TEXT NOT NULL
);

-- insert
INSERT INTO GROUPMATES VALUES (0001, 'Иван', 29, 'Москва, ул. Ленина, д. 5');
INSERT INTO GROUPMATES VALUES (0002, 'Артем', 22, 'Иваново, ул. Ленина, д. 5');
INSERT INTO GROUPMATES VALUES (0003, 'Петр', 27, 'Екатеринбург, ул. Ленина, д. 5');
INSERT INTO GROUPMATES VALUES (0004, 'Данила', 27, 'Новосибирск, ул. Ленина, д. 5');
INSERT INTO GROUPMATES VALUES (0005, 'Анна', 20, 'Мурманск, ул. Ленина, д. 5');
INSERT INTO GROUPMATES VALUES (0006, 'Инна', 32, 'Минск, ул. Московская, д. 5');
INSERT INTO GROUPMATES VALUES (0007, 'Игнат', 32, 'Верхние Пышмы, ул. ул. Александра Козицына, д. 15');
INSERT INTO GROUPMATES VALUES (0008, 'Ева', 28,'Москва, ул. Поварская, д. 5');
INSERT INTO GROUPMATES VALUES (0009, 'Алла', 17,'Москва, площадь Победы, д. 5');
INSERT INTO GROUPMATES VALUES (0010, 'Геннадий', 37,'Москва, Речной проезд, д. 5');

-- fetch 
SELECT name FROM GROUPMATES WHERE adress LIKE '%Москва%' AND ((age >=18) AND (age < 30));
