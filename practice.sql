CREATE DATABASE PRACTICE;
USE PRACTICE;
CREATE TABLE Users (uid integer PRIMARY KEY, usr_role varchar(10), usr_name varchar(15), usr_email varchar(20), usr_passwd varchar(15));
SELECT * FROM PRACTICE.Users;
INSERT INTO USERS (uid,usr_role,usr_name,usr_email,usr_passwd) VALUES (1, 'customer', 'raja', 'raja@yahoo.com', '12345');
INSERT INTO USERS (uid,usr_role,usr_name,usr_email,usr_passwd) VALUES (2, 'customer', 'teddy', 'teddy@yahoo.com', '678910');
#DROP TABLE Users;product_categories
#DROP DATABASE PRACTICE;
#CREATE PRODUCTS TABLE
CREATE TABLE PRODUCTS (pid integer PRIMARY KEY, pr_name varchar(10), p_des varchar(20), pr_price float(10), pr_status enum('Yes', 'No'));
SELECT * FROM PRODUCTS;
INSERT INTO PRODUCTS (pid,pr_name,p_des, pr_price,pr_status) VALUES (1,'appletv','electronic-device',1000,'yes');
INSERT INTO PRODUCTS (pid,pr_name,p_des, pr_price,pr_status) VALUES (2,'sonytv','electronic-device',900,'No');


