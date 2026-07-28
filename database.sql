CREATE DATABASE karima_couture
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;


USE karima_couture;


CREATE TABLE wilayas (

id INT AUTO_INCREMENT PRIMARY KEY,

name VARCHAR(100) NOT NULL

);



CREATE TABLE communes (

id INT AUTO_INCREMENT PRIMARY KEY,

wilaya_id INT,

name VARCHAR(100) NOT NULL,

FOREIGN KEY (wilaya_id) REFERENCES wilayas(id)

);



CREATE TABLE orders (

id INT AUTO_INCREMENT PRIMARY KEY,

name VARCHAR(100),

phone VARCHAR(30),

wilaya VARCHAR(100),

commune VARCHAR(100),

product VARCHAR(100),

price VARCHAR(50),

created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);



INSERT INTO wilayas (name) VALUES

('الجزائر'),
('وهران'),
('قسنطينة');



INSERT INTO communes (wilaya_id,name) VALUES

(1,'باب الواد'),
(1,'الحراش'),
(1,'الدار البيضاء'),

(2,'وهران'),
(2,'السانية'),
(2,'بئر الجير'),

(3,'قسنطينة'),
(3,'الخروب'),
(3,'حامة بوزيان');
