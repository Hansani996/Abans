drop DATABASE abans;

CREATE DATABASE abans;

USE abans;

CREATE TABLE category(
category_id int(10) NOT NULL AUTO_INCREMENT,
category_name varchar(225) NOT NULL,
CONSTRAINT PRIMARY KEY(category_id)
) ENGINE=INNODB;

CREATE TABLE brand(
brand_id int(10) NOT NULL AUTO_INCREMENT,
brand_name varchar(225) NOT NULL,
CONSTRAINT PRIMARY KEY(brand_id)
) ENGINE=INNODB;

CREATE TABLE item(
    item_id int(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR (225) NOT NULL,
    description VARCHAR (225) NOT NULL,
    image VARCHAR (225) NOT NULL,
    price DOUBLE NOT NULL,
    deliveryCost DOUBLE NOT NULL,
    brand int(10) NOT NULL,
    category int(10) NOT NULL,
    discount int(10) NOT NULL,
    shop VARCHAR (225) NOT NULL,
    warranty VARCHAR (225) NOT NULL,
    soldOut BOOL NOT NULL,
    CONSTRAINT PRIMARY KEY(item_id),
    CONSTRAINT FOREIGN KEY(brand) REFERENCES brand(brand_id) on update cascade on delete cascade,
    CONSTRAINT FOREIGN KEY(category) REFERENCES category(category_id) on update cascade on delete cascade
) ENGINE=INNODB;


insert into category (category_id, category_name) values (1,'Computers & Mobile');
insert into category (category_id, category_name) values (2,'TV & Audio');
insert into category (category_id, category_name) values (3,'Kitchen Appliances');
insert into category (category_id, category_name) values (4,'Home Appliances');
insert into category (category_id, category_name) values (5,'Fitness');
insert into category (category_id, category_name) values (6,'Refrigerator, Air Conditioner, Washing Machines');

insert into brand (brand_name) VALUES ('Huawei');
insert into brand (brand_name) VALUES ('Apple');
insert into brand (brand_name) VALUES ('Samsung');
insert into brand (brand_name) VALUES ('Dell');
insert into brand (brand_name) VALUES ('Asus');
insert into brand (brand_name) VALUES ('Celebrat');
insert into brand (brand_name) VALUES ('Nikai');
insert into brand (brand_name) VALUES ('Yamaha');
insert into brand (brand_name) VALUES ('Sharp');
insert into brand (brand_name) VALUES ('Hitachi');
insert into brand (brand_name) VALUES ('Yison');
insert into brand (brand_name) VALUES ('Sunpin');
insert into brand (brand_name) VALUES ('Marshall');
insert into brand (brand_name) VALUES ('Tefal');
insert into brand (brand_name) VALUES ('Prestige');
insert into brand (brand_name) VALUES ('Moulinex');


insert into item (name, description, image, price, deliveryCost, brand, category, discount, shop, warranty, soldOut) VALUES
('LG Inverter Refrigerator 618L - Dark Graphite Steel','LGRF6181DSDGS','https://buyabans.com/upload/product/Refrigerator/LGRF6181DSDGS/webg.jpg',499,990,0,2,1,10,'Abans','24 Months',0),
('QUANTUM Treadmil ProForm Carbon TL - 135KGB','The Carbon TL smart folding treadmill...','https://buyabans.com/upload/product/Sports/LPPFTRMQTPFCABTLA/1_0016_31.jpg',269,910,0,2,1,0,'Abans','12 Months',0),
('KONKA 32" LED TV','KE32MS315','https://buyabans.com/upload/product/TV/KONTV32MS315/1.jpg',39,999,0,1,1,0,'Abans','2 Year',0),
('LG 43" 4K UHD TV','LG 43" 4K UHD TV','https://buyabans.com/upload/product/TV/LGTV43UP7550PTC/700.png',159,999,0,5,1,0,'Abans','3 Year',0);

insert into item (name, description, image, price, deliveryCost, brand, category, discount, shop, warranty, soldOut) VALUES
('Realme C11 2021 32GB Mobile Phone - Blue','JRMPH-C112021BL','https://buyabans.com/upload/product/Phone/RMPH-C112021BL/1.jpg
',59900,0,10,2,50,'Abans','12 Months',0),
('Realme C11 2021 32GB Mobile Phone - Gray','RMPH-C112021GY','https://buyabans.com/upload/product/Phone/RMPH-C112021GY/1_1.jpg',22,999,0,9,2,14,'Abans','12 Months',0);



insert into item (name, description, image, price, deliveryCost, brand, category, discount, shop, warranty, soldOut) VALUES
('MITSUBISHI Air Conditioner Inverter 13000BTU','ABKTHHB1772','https://buyabans.com/upload/product/AC/MBACINGH10VAM/Mist--1-AC.jpg',159,990,0,0,0,5,'Abans','5 Year',0),
('ABANS 12000 BTU Non-Inverter Portable Air Conditioner','ABIRS1688GR','https://buyabans.com/upload/product/AC/ABACPT12CRR32H/1.jpg',114,990,0,7,4,20,'Abans','5 Year',0),
('ABANS Air Conditioner 18000BTU R32 Fix Speed','ABIRS1688GR','https://buyabans.com/upload/product/AC/ABACSTLG09CRR32/Abans-AC.jpg',154,990,0,5,0,10,'Abans','5 Year',0);
