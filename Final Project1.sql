create database Afdharika_db1;
use Afdharika_db1;
CREATE TABLE `elmart_user` (
  `eluser_id` int AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `eluser_name` varchar(20) NOT NULL,
  `eluser_password` varchar(20) NOT NULL,
  `eluser_address1` varchar(45) DEFAULT NULL,
  `eluser_address2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`eluser_id`),
  UNIQUE KEY `eluser_name_UNIQUE` (`eluser_name`)
) ;
insert into elmart_user(first_name,last_name,eluser_name,eluser_password,eluser_address1,eluser_address2) values ('Mark','Antony','Mark18','Antony@1','Maharashtra','Mumbai'),
     ('Joseph','Fernandes','Joe11','JoFern$12','Agra','Delhi'),
    ('Anto','Princia','Princy5','Anto#31','Hyderabad','Telangana'),
    ('Malathi','Shetty','Malu','Malshet@1','Panaji','Goa'),
    ('Prathap','Singh','Pradap9','Psingh@09','Jaipur','Rajasthan'),
     ('Chandra','Mohan','ChandraM','Chan@34','Trichy','TamilNadu'),
    ('Rosy','Naidu','Rose2','RosyNaidu@3','Pondicherry','Pondicherry'),
  ('Divya','Praba','Divya13','Praba@12','Tirupati','AndhraPradesh'),
   ('Malini','Dass','Malini&17','Dass07','Mysore','Karnataka'),
    ('Subash','Sabari','Subash@12','SubashS','Chennai','TamilNadu');
create table`elmart_category1` (
  `elcategory_id` int AUTO_INCREMENT,
  `elcategory_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`elcategory_id`),
  UNIQUE KEY `elcategory_name_UNIQUE` (`elcategory_name`)
);
insert into elmart_category1(elcategory_id,elcategory_name) values(001,'electronics'),
(002,'electricals'),(003,'furnitures'),(004,'Homeappliances'),(005,'Baby Products'),(006,'sportsUsage'),
(007,'Accessories'),(008,'clothing'),(009,'Beauty Products'),(010,'forPets');
select*from elmart_user;
select*from elmart_category1;
CREATE TABLE `elmart_product` (
  `elproduct_id` int AUTO_INCREMENT,
  `elproduct_name` varchar(20) DEFAULT NULL,
  `elproduct_description` varchar(250) DEFAULT NULL,
  `unit_price` decimal(13,2) DEFAULT NULL,
  `elproduct_image` varchar(20) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `available_stock` int DEFAULT NULL,
  `date_created` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `last_updated` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `elcategory_id` int,
  PRIMARY KEY (`elproduct_id`),
  UNIQUE KEY `elproduct_name_UNIQUE` (`elproduct_name`),
  KEY `fk_catid_idx` (`elcategory_id`),
  CONSTRAINT `fk_catid` FOREIGN KEY (`elcategory_id`) REFERENCES `elmart_category1` (`elcategory_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ;
insert into elmart_product(elproduct_name,elproduct_description,unit_price,elproduct_image,active,available_stock,date_created,last_updated,elcategory_id) values('Mobile','Brings the world into our hands',12000.0,'aaa',1,2500,DEFAULT,DEFAULT,001),
('Television','Displays the nature',40000.0,'bbb',1,3000,DEFAULT,DEFAULT,002),
('Sofa','Make comfortable to sit',15000.2,'ccc',0,1500,DEFAULT,DEFAULT,003),
('Washing Machine','Easier to Dry clothes',45000.06,'ddd',1,7000,DEFAULT,DEFAULT,004),
('Baby Cot','Happy Sleep for Babies',8500.0,'eee',1,500,DEFAULT,DEFAULT,005),
('Cricket Bat','Make the team win',2000.0,'fff',1,1000,DEFAULT,DEFAULT,006),
('Wrist Watch','Do work on time',5000.0,'ggg',1,4500,DEFAULT,DEFAULT,007),
('Traditional Wear','Express in Own way',15000.2,'hhh',1,10000,DEFAULT,DEFAULT,008),
('Lipstick','Shades your Lip',3000.0,'iii',1,5000,DEFAULT,DEFAULT,009),
('pedigree','Favourite food for pets',10000.0,'jjj',1,4000,DEFAULT,DEFAULT,010);
select*from elmart_product;