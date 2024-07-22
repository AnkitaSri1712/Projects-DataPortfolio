#Task 3:
select * from passengers_on_flights;
select customer_id from passengers_on_flights
where route_id between 1 and 25;

#Task 4:
select * from ticket_details;
select count(customer_id) as total_number_of_passengers, sum(Price_per_ticket*no_of_tickets) as total_revenue
from ticket_details
where class_id='Bussiness';

#Task 5:
select concat(first_name,' ',last_name) as customer_name
from customer;

#Task6:
SELECT c.*
FROM customer c
INNER JOIN ticket_details t ON c.customer_id = t.customer_id;

#Task7:
select * from ticket_details;
SELECT c.first_name, c.last_name
FROM customer c
INNER JOIN ticket_details t ON c.customer_id = t.customer_id
WHERE t.brand = 'Emirates';

#Task 8:
SELECT customer_id, COUNT(*) AS num_flights
FROM passengers_on_flights
WHERE class_id = 'Economy Plus'
GROUP BY customer_id
HAVING num_flights > 0;

#Task 9:
SELECT IF(SUM(price_per_ticket * no_of_tickets) > 10000, 'Yes', 'No') AS revenue_crossed
FROM ticket_details;

#Task 10:
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON aircargo.* TO 'new_user'@'localhost';
FLUSH PRIVILEGES;

#Task 11:
SELECT class_id, MAX(price_per_ticket) AS max_ticket_price
FROM ticket_details
group BY class_id;

#Task 12:
SELECT *
FROM passengers_on_flights
WHERE route_id = 4;

#Task 13:
EXPLAIN SELECT *
FROM passengers_on_flights
WHERE route_id = 4;

#Task 14:
SELECT customer_id, SUM(price_per_ticket * no_of_tickets) AS total_price
FROM ticket_details
GROUP BY customer_id WITH ROLLUP;

#Task15:
CREATE VIEW business_class_customers AS
SELECT c.customer_id, c.first_name, c.last_name, t.brand
FROM customer c
JOIN ticket_details t ON c.customer_id = t.customer_id
WHERE t.class_id = 'Business';

#Task 16:
DELIMITER //

CREATE PROCEDURE get_passenger_details(IN min_route_id INT, IN max_route_id INT)
BEGIN
    IF NOT EXISTS (SELECT 1 FROM routes WHERE route_id BETWEEN min_route_id AND max_route_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No routes found in the specified range';
    ELSE
        SELECT *
        FROM passengers_on_flights
        WHERE route_id BETWEEN min_route_id AND max_route_id;
    END IF;
END //

DELIMITER ;

#Task17:
DELIMITER //

CREATE PROCEDURE get_long_distance_routes()
BEGIN
    SELECT *
    FROM routes
    WHERE distance_miles > 2000;
END //

DELIMITER ;

#Task 18:
DELIMITER //

CREATE PROCEDURE group_flight_distance()
BEGIN
    SELECT
        route_id,
        CASE
            WHEN distance_miles >= 0 AND distance_miles <= 2000 THEN 'SDT'
            WHEN distance_miles > 2000 AND distance_miles <= 6500 THEN 'IDT'
            WHEN distance_miles > 6500 THEN 'LDT'
        END AS distance_category
    FROM routes;
END //

DELIMITER ;

#Task 19:
DELIMITER //

CREATE FUNCTION check_complimentary_services(class_id VARCHAR(20))
RETURNS VARCHAR(3)
READS SQL DATA
DETERMINISTIC
BEGIN
    DECLARE complimentary VARCHAR(3);
    
    IF class_id IN ('Business', 'Economy Plus') THEN
        SET complimentary = 'Yes';
    ELSE
        SET complimentary = 'No';
    END IF;
    
    RETURN complimentary;
END //

DELIMITER ;

#Task 20:
DELIMITER //

CREATE PROCEDURE find_customer_with_scott()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE customer_name VARCHAR(100);
    DECLARE cur CURSOR FOR SELECT CONCAT(first_name, ' ', last_name) FROM customer WHERE last_name LIKE '%Scott' LIMIT 1;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cur;
    
    fetch_loop: LOOP
        FETCH cur INTO customer_name;
        IF done THEN
            LEAVE fetch_loop;
        END IF;
        SELECT customer_name;
    END LOOP;
    
    CLOSE cur;
END //

DELIMITER ;
