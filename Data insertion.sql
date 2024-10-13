USE RestaurantDB;

INSERT INTO restaurant (name, city, address, postcode)
VALUES ('Restauracja A', 'Warszawa', 'Ul. Przykładowa 1', '00-001');

INSERT INTO Restaurant_Table (name, number_of_guests, restaurant_id) 
VALUES ('Stolik 1', 4, 1),
       ('Stolik 2', 2, 1);

INSERT INTO Reservation (restaurant_table_id, phone_number, date, number_of_guests)
VALUES (1, '123456789', '2024-10-10', 4);

INSERT INTO Meal_Type (name) 
VALUES ('Śniadanie'), ('Obiad'), ('Kolacja');

INSERT INTO Meal (meal_type_id, restaurant_id, price, meal_name) 
VALUES (1, 1, 20.00, 'Jajecznica'), (2, 1, 35.00, 'Schabowy');

INSERT INTO Employee_Position (name) VALUES ('Kelner'), ('Kucharz');

INSERT INTO Employee (first_name, last_name, personal_id_number) 
VALUES ('Jan', 'Kowalski', '12345678901'), ('Anna', 'Nowak', '09876543210');

INSERT INTO Employment (employee_id, employee_position_id, restaurant_id) 
VALUES (1, 1, 1), (2, 2, 1);
