USE RestaurantDB;

SELECT * FROM Reservation;

SELECT * FROM restaurant_table rt 
LEFT JOIN reservation r on rt.id = r.restaurant_table_id
WHERE r.restaurant_table_id IS NULL;

SELECT rt.*
FROM Restaurant_Table rt
JOIN Reservation r ON rt.id = r.restaurant_table_id
WHERE rt.restaurant_id = 1;  -- ID danej restauracji

SELECT e.first_name, e.last_name, ep.name AS position, r.name AS restaurant
FROM Employee e
JOIN Employment em ON e.id = em.employee_id
JOIN Employee_Position ep ON em.employee_position_id = ep.id
JOIN Restaurant r ON em.restaurant_id = r.id;

SELECT e.* FROM employee e 
LEFT JOIN employment em ON e.id = em.employee_id
WHERE em.employee_id IS NULL;

SELECT e.first_name, e.last_name, COUNT(em.restaurant_id) AS restaurant_count
FROM Employee e
JOIN Employment em ON e.id = em.employee_id
GROUP BY e.id
HAVING restaurant_count >= 2;

SELECT * FROM restaurant r CROSS JOIN employee e;