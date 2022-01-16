/*
  Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.
    1- film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
    2- film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
    3- film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
    4- payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
*/
------
SELECT COUNT(*) FROM film 
WHERE length > (SELECT AVG(length) FROM film);   --489
------
SELECT COUNT(*) FROM film 
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);   --336
------
SELECT * FROM film 
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);
------
SELECT * FROM customer 
WHERE customer_id = (SELECT customer_id FROM (SELECT COUNT(*), customer_id FROM payment GROUP BY customer_id ORDER BY count DESC LIMIT 1) AS count);
