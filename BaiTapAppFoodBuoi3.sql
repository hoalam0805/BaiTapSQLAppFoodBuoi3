#### App Food Homework ####
#CREATE DATABASE db_node29
## Step 1: Create tables ##
-- CREATE TABLE user(
--     user_id INT PRIMARY KEY AUTO_INCREMENT,
--     full_name VARCHAR(50),
--     email VARCHAR(50),
--     password VARCHAR(50)
-- );

-- CREATE TABLE food_type (
--     type_id INT PRIMARY KEY AUTO_INCREMENT,
--     type_name VARCHAR(50)
-- );

-- CREATE TABLE food (
--     food_id INT PRIMARY KEY AUTO_INCREMENT,
--     food_name VARCHAR(50),
--     image VARCHAR(50),
--     price FLOAT,
--     description VARCHAR(50),
--     type_id INT, 
--     FOREIGN KEY (type_id) REFERENCES food_type(type_id)
-- );

-- CREATE TABLE orders (
-- 	user_id INT,
--     food_id INT,
--     amount INT,
--     code VARCHAR(50),
--     arr_sub_id VARCHAR(255),
--     #PRIMARY KEY (user_id, food_id),
-- 	FOREIGN KEY (user_id) REFERENCES user(user_id),
--     FOREIGN KEY (food_id) REFERENCES food(food_id)
-- );

-- CREATE TABLE sub_food (
-- 	sub_id INT PRIMARY KEY AUTO_INCREMENT,
--     sub_name VARCHAR(50),
--     sub_price FLOAT,
--     food_id INT,
--     FOREIGN KEY (food_id) REFERENCES food(food_id)
-- );

-- CREATE TABLE restaurant(
-- 	res_id INT PRIMARY KEY AUTO_INCREMENT,
--     res_name VARCHAR(50),
--     image VARCHAR (50),
--     description VARCHAR(50)
-- );

-- CREATE TABLE rate_res(
-- 	user_id INT,
--     res_id INT,
--     amount INT,
--     date_rate DATETIME,
--     FOREIGN KEY (user_id) REFERENCES user(user_id),
--     FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
-- );

-- CREATE TABLE like_res (
-- 	user_id INT,
--     res_id INT,
--     date_like DATETIME,
--     FOREIGN KEY (user_id) REFERENCES user(user_id),
--     FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
-- );

## Step 2: Insert data to tables ##
-- INSERT INTO user(full_name, email, password) values ('Hoa Lam', 'hoalam@gmail.com', 'hoa123'), 
-- 						('Minh Duong', 'minhduong@gmail.com', 'minh123'),
--                         ('Duy Ho', 'duyho@gmail.com', 'duy123'), 
--                         ('Khanh Nguyen', 'khanhnguyen@gmail.com', 'khanh123'),
--                         ('Nhon Luu', 'nhonluu@gmail.com', 'nhon123'),
-- 						('Huong Le', 'huongle@gmail.com', 'huong123'),
-- 						('Vy Nguyen', 'vynguyen@gmail.com', 'vy123'),
-- 						('Thy Nguyen', 'thynguyen@gmail.com', 'thy123');
--
-- INSERT INTO restaurant(res_name, image, description) values ('Bo Nuong Sot', 'bonuongsot.png', 'Lau bo ngon nhat Sai Gon'),
-- 							('Gogi', 'gogi.png', 'Gogi ngon thuong hang'),
--                             ('Haidilao', 'haidilao.png', 'Haidilao yummy yummy'),
-- 							('Hutong', 'hutong.png', 'Best food ever'),
-- 							('Sushi Takiya', 'sushitakiya.png', 'Salmon Sushi'),
--                             ('Sumo BBQ', 'sumo.png', 'Top 1 BBQ of Sai Gon');

-- INSERT INTO like_res values(1, 1, '2023-05-06'), (1, 2, '2023-05-06'), (1, 3, '2023-05-07'), (1, 4, '2022-04-02'), (1, 5, '2022-03-03'), (1, 6, '2022-07-23'),
-- 							(2, 1, '2023-01-05'), (2, 2, '2021-01-02'), (2, 3, '2022-12-04'), (2, 4, '2022-02-14'), (2, 5, '2022-02-12'), (2, 6, '2022-01-16'),
--                             (3, 1, '2020-11-02'), (3, 2, '2020-10-03'), (3, 3, '2022-04-05'), (3, 4, '2022-11-20'), (3, 5, '2022-01-24'), (3, 6, '2022-02-17'),
--                             (4, 1, '2021-01-02'), (4, 2, '2021-02-01'), (4, 3, '2022-09-05'), (4, 4, '2022-10-20'), (4, 5, '2022-02-20'), (4, 6, '2022-01-21'),
--                             (5, 1, '2022-05-05'), (5, 2, '2021-02-02'), (5, 3, '2020-08-07'), (5, 4, '2022-05-08'), (5, 5, '2021-06-14'), (5, 6, '2022-03-18'),
--                             (6, 1, '2019-05-05'), (6, 2, '2021-02-02'), (6, 3, '2022-08-07'), (6, 4, '2022-03-08'), (6, 5, '2022-03-23'),
--                             (7, 1, '2022-05-05'), (7, 2, '2020-02-02'), (7, 3, '2022-08-07'), (6, 4, '2022-04-14'), (7, 5, '2022-09-24');

-- INSERT INTO rate_res values(1, 1, 2, '2023-05-06'),
-- 							(2, 1, 3, '2023-01-05'),
--                             (3, 1, 4, '2020-11-02'),
--                             (4, 1, 2, '2021-01-02'),
--                             (5, 1, 3, '2022-05-05'),
--                             (6, 1, 6, '2019-05-05'),
--                             (7, 1, 1, '2022-05-05');

-- INSERT INTO food_type(type_name) values ('Thit'),('Giai khat'),('Che'),('Banh'),('Keo'),('Bun');

-- INSERT INTO food(food_name, image, price, description, type_id) values ('Coca Cola', 'coca.png', 6, 'Nuoc giai khat', 2),
-- 																		('Banh Su Kem', 'sukem.png', 5, 'Banh', 4),
--                                                                         ('Banh Sinh Nhat', 'sinhnhat.png', 50, 'Banh', 4),
--                                                                         ('Thit bo', 'thitbo.png', 20, 'Thit dong vat', 1),
--                                                                         ('Thit heo', 'thitheo.png', 15, 'Thit dong vat', 1),
--                                                                         ('Che Thai', 'chethai.png', 4, 'Che Thai', 3),
--                                                                         ('Che Khuc Bach', 'chetkhucbach.png', 3, 'Che Khuc Bach', 3),
--                                                                         ('Snickers Chocolate', 'keosnickers.png', 10, 'Keo chocolate snickers', 5),
--                                                                         ('Tra Sua', 'trasua.png', 5, 'Milk Tea', 2), 
-- 																		('Bun Rieu', 'bunrieu.png', 4, 'Milk Tea', 6),
-- 																		('Bun Dau', 'bundau.png', 20, 'Bun Dau Mam Tom', 6),
-- 																		('Bun Ca', 'bunca.png', 15, 'Bun Ca', 6),
-- 																		('Bun cha', 'buncha.png', 15, 'Bun Cha', 6);
                                                                   
-- INSERT INTO orders (user_id, food_id, amount, code) values (1, 4, 6, 'QWERGG'), (1, 2, 2, 'QVVXXA'), (1, 1, 7, 'LGOTPR'), (1, 5, 2, 'CMHKPK'),
-- (2, 4, 6, '1sgee2'), (2, 2, 25, 'fgfrtq'), (2, 1, 17, '344gdd'), (2, 5, 7, 're223a'), (2, 5, 6, 'sd13fd'), (2, 5, 12, '2erdrq'), (2, 5, 32, 'sqe21s'),
-- (3, 2, 6, 'asf24a'), (3, 1, 22, 'eretyt'), (3, 1, 21, 'zxcfgw'), (3, 5, 8, 'zcsdw1'),
-- (4, 1, 1, 'xckvjd'), (4, 2, 12, 'gdftyr'), (4, 1, 11, 'qe123q'),
-- (5, 3, 12, 'oirtmg'),
-- (6, 4, 13, 'jtirjg'), (6, 5, 11, 'czkdjf'), (6, 1, 21, '23reda'),
-- (7, 5, 16, 'kvofkt');
					
-- INSERT INTO sub_food (sub_name, sub_price, food_id) values ('Tran Chau', 2, 9), ('Thach Pho Mai', 3, 9), 
-- 															('Hanh Phi', 2, 10), ('Hanh la', 1, 10), 
--                                                             ('Cha com', 2, 11);

## Step 3: Do exercise queries ##
## 1. Tìm 5 người đã like nhà hàng nhiều nhất
SELECT usr.full_name as 'Tên Khách Hàng', count(usr.user_id) AS 'Lượt like' FROM user usr 
JOIN like_res lkres ON usr.user_id = lkres.user_id
WHERE usr.user_id = lkres.user_id
GROUP BY usr.full_name
ORDER BY COUNT(usr.user_id) DESC
LIMIT 5;

## 2. Tìm 2 nhà hàng có lượt like nhiều nhất
SELECT res.res_name AS 'Nhà hàng', COUNT(res.res_id) AS 'Lượt like' from restaurant res 
JOIN like_res lkres ON res.res_id = lkres.res_id 
WHERE res.res_id = lkres.res_id
GROUP BY res.res_name
ORDER BY COUNT(res.res_id) DESC 
LIMIT 2;

## 3. Tìm người đã đặt hàng nhiều nhất
SELECT usr.full_name as 'Tên khách hàng', COUNT(ords.user_id) as 'Số lần đặt hàng' FROM orders ords 
JOIN user usr ON usr.user_id = ords.user_id 
WHERE usr.user_id = ords.user_id
GROUP BY usr.full_name
ORDER BY COUNT(ords.user_id) DESC
LIMIT 1;

## 4. Tìm người dùng không hoạt động trong hệ thống
SELECT * FROM user usr 
JOIN orders ords ON usr.user_id = ords.user_id
JOIN rate_res rrst ON usr.user_id = rrst.user_id
JOIN like_res lrst ON usr.user_id = lrst.user_id
WHERE usr.user_id NOT IN (SELECT user_id FROM orders ords WHERE ords.user_id NOT NULL);

## 5. Tính trung bình sub_food của một food
SELECT f.food_name as 'Tên món ăn', AVG(sf.sub_price) as 'Gía trung bình thức ăn kèm' 
FROM sub_food sf JOIN food f ON sf.food_id = f.food_id 
WHERE sf.food_id = f.food_id GROUP BY f.food_name;
