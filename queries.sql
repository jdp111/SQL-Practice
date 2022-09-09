-- write your queries here


-- shows all joined rows with people who do not own cars
SELECT * 
FROM owners LEFT JOIN vehicles ON (owners.id = owner_id);

--counts the number of cars for each owner
SELECT first_name, last_name, COUNT(*)
FROM vehicles JOIN owners ON (owner_id = owners.id)
GROUP BY first_name, last_name
ORDER BY first_name;

--count cars and average price for each owner, first name descending order, average price > 10000
SELECT first_name, last_name, AVG(price) AS average_price, count(*)
FROM vehicles JOIN owners ON (owner_id = owners.id)
GROUP BY first_name, last_name
ORDER BY first_name desc;
