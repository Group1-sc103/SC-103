CREATE DATABASE PRACTICE;
USE PRACTICE;
CREATE TABLE IF NOT EXISTS Users (uid integer NOT NULL AUTO_INCREMENT, usr_role varchar(10), usr_name varchar(15), usr_email varchar(20), usr_passwd varchar(15), PRIMARY KEY(uid));
SELECT * FROM PRACTICE.Users;
INSERT INTO USERS (usr_role,usr_name,usr_email,usr_passwd) VALUES ('customer', 'raja', 'raja@yahoo.com', '12345'), ('customer', 'teddy', 'teddy@yahoo.com', '678910');
#INSERT INTO USERS (uid,usr_role,usr_name,usr_email,usr_passwd) VALUES ('customer', 'teddy', 'teddy@yahoo.com', '678910');
#DROP TABLE Users;product_categories
#DROP DATABASE PRACTICE;
CREATE TABLE IF NOT EXISTS PRODUCTS (pid integer NOT NULL AUTO_INCREMENT, pr_name varchar(10), p_des varchar(20), pr_price float(10), pr_status enum('Yes', 'No') NOT NULL, PRIMARY KEY(pid,pr_status));
SELECT * FROM PRODUCTS;
INSERT INTO PRODUCTS (pr_name,p_des, pr_price,pr_status) VALUES ('appletv','electronic-device',1000,'yes'),('sonytv','electronic-device',900,'No');
#INSERT INTO PRODUCTS (pid,pr_name,p_des, pr_price,pr_status) VALUES ('sonytv','electronic-device',900,'No');
#CREATE TABLE IF NOT EXISTS Shopping_Cart_Items(uid int, pid int, pr_status enum('yes', 'no'), quantity int, PRIMARY KEY(uid,pid,pr_status), FOREIGN KEY(uid) REFERENCES Users(uid) on delete cascade, FOREIGN KEY(pid,pr_status) REFERENCES PRODUCTS(pid,pr_status) on delete cascade); 
CREATE TABLE IF NOT EXISTS Shopping_Cart_Items(uid int, pid int, pr_status enum('yes', 'no'), quantity int, PRIMARY KEY(uid,pid,pr_status), FOREIGN KEY(uid) REFERENCES Users(uid) on delete cascade, FOREIGN KEY(pid,pr_status) REFERENCES PRODUCTS(pid,pr_status) on delete cascade);
SELECT * FROM Shopping_Cart_Items;


