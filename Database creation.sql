CREATE DATABASE RestaurantDB;

USE RestaurantDB;

CREATE TABLE Restaurant (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    city VARCHAR(100),
    address VARCHAR(255),
    postcode VARCHAR(10)
);

CREATE TABLE Restaurant_Table (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    number_of_guests INT,
    restaurant_id INT,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(id)
);

CREATE TABLE Reservation (
    id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_table_id INT,
    phone_number VARCHAR(12),
    date DATE,
    number_of_guests INT,
    FOREIGN KEY (restaurant_table_id) REFERENCES Restaurant_Table(id)
);

CREATE TABLE Meal_Type (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE Meal (
    id INT PRIMARY KEY AUTO_INCREMENT,
    meal_type_id INT,
    restaurant_id INT,
    price DECIMAL(10, 2),
    meal_name VARCHAR(100),
    FOREIGN KEY (meal_type_id) REFERENCES Meal_Type(id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(id)
);

CREATE TABLE Employee_Position (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE Employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(255),
    personal_id_number VARCHAR(11)
);

CREATE TABLE Employment (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    employee_position_id INT,
    restaurant_id INT,
    FOREIGN KEY (employee_id) REFERENCES Employee(id),
    FOREIGN KEY (employee_position_id) REFERENCES Employee_Position(id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(id)
);
