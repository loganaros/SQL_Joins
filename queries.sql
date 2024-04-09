-- write your queries here
SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;
SELECT first_name, last_name, COUNT(*) AS cars_owned FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.id ORDER BY cars_owned ASC;
SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(*) AS cars_owned FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.id HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000ORDER BY cars_owned ASC;