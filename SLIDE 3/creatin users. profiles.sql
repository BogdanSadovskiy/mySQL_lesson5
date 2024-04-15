use newTable;
drop table if exists profiles;
drop table if exists users;


create table if not exists users(
id int primary key auto_increment,
name varchar (255) not null,
email varchar(255) not null unique,
password varchar (255) not null
);

create table if not exists profiles(
id int primary key auto_increment,
user_id int, foreign key(user_id) references users(id),
registration_date date,
last_activity date,
city varchar (255),
phone varchar (255),
money int not null
);

-- Drop the existing 'profiles' table if it exists
DROP TABLE IF EXISTS profiles;

-- Create the 'profiles' table with the new column 'last_activity'
CREATE TABLE profiles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id) on  delete cascade,
    registration_date DATE,
    last_activity DATE,
    city VARCHAR(255),
    phone VARCHAR(255),
    money INT
);




INSERT INTO users (name, email, password) VALUES
('John Doe', 'john@example.com', 'password1'),
('Jane Smith', 'jane@example.com', 'password2'),
('Michael Johnson', 'michael@example.com', 'password3'),
('Emily Brown', 'emily@example.com', 'password4'),
('Daniel Lee', 'daniel@example.com', 'password5'),
('Olivia Wilson', 'olivia@example.com', 'password6'),
('William Martinez', 'william@example.com', 'password7'),
('Sophia Anderson', 'sophia@example.com', 'password8'),
('James Taylor', 'james@example.com', 'password9'),
('Emma Thomas', 'emma@example.com', 'password10'),
('Alexander White', 'alexander@example.com', 'password11'),
('Ava Harris', 'ava@example.com', 'password12'),
('David Clark', 'david@example.com', 'password13'),
('Isabella King', 'isabella@example.com', 'password14'),
('Mason Wright', 'mason@example.com', 'password15'),
('Mia Scott', 'mia@example.com', 'password16'),
('Ethan Green', 'ethan@example.com', 'password17'),
('Charlotte Baker', 'charlotte@example.com', 'password18'),
('Noah Hall', 'noah@example.com', 'password19'),
('Abigail Adams', 'abigail@example.com', 'password20');

INSERT INTO profiles (user_id, registration_date, last_activity, city, phone, money) VALUES
(1, '2023-01-15', '2023-04-05', 'New York', '123-456-7890', 5000),
(2, '2022-05-22', '2023-03-20', 'Los Angeles', '456-789-0123', 7000),
(3, '2022-08-10', '2022-11-25', 'Chicago', '789-012-3456', 6000),
(4, '2023-02-28', '2023-05-10', 'Houston', '012-345-6789', 5500),
(5, '2021-06-05', '2022-09-30', 'Phoenix', '234-567-8901', 6500),
(NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2023-07-12', '2024-04-10', 'Dallas', '333-444-5555', 7200),
(7, '2023-04-30', '2023-12-10', 'Atlanta', '222-333-4444', 6900),
(8, '2022-11-08', '2024-04-15', 'Boston', '555-666-7777', 7400),
(9, '2023-10-25', '2024-01-05', 'Denver', '666-777-8888', 7700),
(10, '2022-09-17', '2023-06-20', 'Houston', '888-999-0000', 7800),
(11, '2024-04-15', '2024-04-14', 'Chicago', '999-000-1111', 8200),
(NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2024-02-12', '2024-03-30', 'New York', '111-222-3333', 8300),
(14, '2024-01-10', '2024-04-10', 'San Francisco', '222-333-4444', 9100),
(15, '2023-08-21', '2024-01-20', 'Miami', '333-444-5555', 9400),
(20, '2023-05-29', '2023-10-15', 'Seattle', '444-555-6666', 9600);







