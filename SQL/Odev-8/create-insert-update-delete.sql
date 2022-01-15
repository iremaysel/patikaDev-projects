/*
  1- test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
  2- Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
  3- Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
  4- Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
*/

-------
CREATE TABLE employee (
	id INTEGER PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	birthday DATE,
	email VARCHAR(100)
);
-------
insert into employee (name, birthday, email) values ('Artemas', '1968-07-11', 'aallone0@abc.net.au');
insert into employee (name, birthday, email) values ('Delia', '1982-05-28', 'ddunn1@yale.edu');
insert into employee (name, birthday, email) values ('Mitch', null, null);
insert into employee (name, birthday, email) values ('Trescha', '1998-04-01', 'transom3@army.mil');
insert into employee (name, birthday, email) values ('Nathalie', '1972-10-20', 'nsmithies4@msu.edu');
insert into employee (name, birthday, email) values ('Shelby', '1995-07-05', 'swelford5@weibo.com');
insert into employee (name, birthday, email) values ('Ellyn', '1970-06-28', 'eberens6@cisco.com');
insert into employee (name, birthday, email) values ('Silvain', '1957-07-23', 'sslowey7@jugem.jp');
insert into employee (name, birthday, email) values ('Rochette', '1947-03-16', 'rdipietro8@disqus.com');
insert into employee (name, birthday, email) values ('Timi', null, null);
insert into employee (name, birthday, email) values ('Max', null, null);
insert into employee (name, birthday, email) values ('Elvyn', '1982-07-03', 'emelmoreb@slideshare.net');
insert into employee (name, birthday, email) values ('Taffy', '1970-02-17', 'tfilyushkinc@eepurl.com');
insert into employee (name, birthday, email) values ('Aeriell', '1972-01-03', 'abarnewilled@dailymail.co.uk');
insert into employee (name, birthday, email) values ('Giorgia', '1942-10-24', 'gasche@cam.ac.uk');
insert into employee (name, birthday, email) values ('Barnard', '1940-08-24', 'bfawcettf@wordpress.com');
insert into employee (name, birthday, email) values ('Peterus', '1962-01-05', 'pearyg@yellowbook.com');
insert into employee (name, birthday, email) values ('Staci', '1908-09-10', 'sbrosettih@cdbaby.com');
insert into employee (name, birthday, email) values ('Bernadene', '1932-09-17', 'browlandi@dailymotion.com');
insert into employee (name, birthday, email) values ('Dorothee', '1983-12-24', 'dfawthropj@stanford.edu');
insert into employee (name, birthday, email) values ('Noami', null, null);
insert into employee (name, birthday, email) values ('Emiline', '1912-02-10', 'egossel@apple.com');
insert into employee (name, birthday, email) values ('Ursola', '1921-10-23', 'ulabbezm@reuters.com');
insert into employee (name, birthday, email) values ('Anni', '1972-09-30', 'aafonson@linkedin.com');
insert into employee (name, birthday, email) values ('Roseline', null, null);
insert into employee (name, birthday, email) values ('Madella', '1982-01-30', 'mtollertonp@fotki.com');
insert into employee (name, birthday, email) values ('Nell', '1997-08-14', 'nducarmeq@sakura.ne.jp');
insert into employee (name, birthday, email) values ('Teresa', '1963-06-02', 'thaxleyr@jimdo.com');
insert into employee (name, birthday, email) values ('Douglas', '1940-06-22', 'dcayfords@yellowpages.com');
insert into employee (name, birthday, email) values ('Ky', '1934-04-08', 'kkidt@intel.com');
insert into employee (name, birthday, email) values ('Lisetta', null, null);
insert into employee (name, birthday, email) values ('Gherardo', '1927-09-16', 'gmckeachiev@rakuten.co.jp');
insert into employee (name, birthday, email) values ('Edita', '1976-05-21', 'ebernetw@hp.com');
insert into employee (name, birthday, email) values ('Kristy', '1905-12-01', 'kspurnierx@wikimedia.org');
insert into employee (name, birthday, email) values ('Colene', '1946-07-03', 'cpietriy@wisc.edu');
insert into employee (name, birthday, email) values ('Carin', '1956-01-26', 'cfeachamz@yellowbook.com');
insert into employee (name, birthday, email) values ('Donny', '1950-10-28', 'dhumfrey10@usnews.com');
insert into employee (name, birthday, email) values ('Ebeneser', '1928-10-27', 'ebrockett11@pen.io');
insert into employee (name, birthday, email) values ('Isadora', '1934-07-27', 'icrosscombe12@miibeian.gov.cn');
insert into employee (name, birthday, email) values ('Taffy', '1970-06-18', 'tknottley13@pinterest.com');
insert into employee (name, birthday, email) values ('Brandyn', '1987-09-18', 'bedards14@nsw.gov.au');
insert into employee (name, birthday, email) values ('Alejoa', '1995-03-08', 'akeasley15@mtv.com');
insert into employee (name, birthday, email) values ('Oswell', null, null);
insert into employee (name, birthday, email) values ('Alena', '1986-02-09', 'adrakard17@wikia.com');
insert into employee (name, birthday, email) values ('Louisa', '1923-11-28', 'llefloch18@theatlantic.com');
insert into employee (name, birthday, email) values ('Pavla', '1968-08-11', 'pshann19@paginegialle.it');
insert into employee (name, birthday, email) values ('Obadiah', '1986-10-10', 'ogosselin1a@zimbio.com');
insert into employee (name, birthday, email) values ('Rozalin', '1943-01-13', 'rkwietak1b@jugem.jp');
insert into employee (name, birthday, email) values ('Benedikta', '1971-05-28', 'bmckain1c@huffingtonpost.com');
insert into employee (name, birthday, email) values ('Adaline', '1934-01-30', 'afraczek1d@liveinternet.ru');
-------
UPDATE employee 
SET email =  'mitch@yale.edu',
    birthday = '1986-05-03'
WHERE name = 'Mitch'
RETURNING *;
-------
UPDATE employee 
SET name = 'Ely'
WHERE id = '7'
RETURNING *;
-------
UPDATE employee 
SET email =  'delia@yale.edu',
    birthday = '1990-05-03'
WHERE id = '2'
RETURNING *;
-------
UPDATE employee 
SET email = 'timi@test.com'
WHERE id = '10'
RETURNING *;
-------
UPDATE employee 
SET name = 'Georgia'
WHERE id = '15'
RETURNING *;
-------
DELETE FROM employee
WHERE id =15
RETURNING *;
-------
DELETE FROM employee
WHERE id =10
RETURNING *;
-------
DELETE FROM employee
WHERE id >11
RETURNING *;
-------
DELETE FROM employee
WHERE id =7
RETURNING *;
-------
DELETE FROM employee
WHERE id =2
RETURNING *;
-------
