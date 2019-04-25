use transactions;
CREATE TABLE product( 
   productid CHAR(2) NOT NULL,
   productname VARCHAR(25) NOT NULL,
   PRIMARY KEY (productid) );

CREATE TABLE customer (
   customerid CHAR(2) NOT NULL,
   customerlastname VARCHAR(25) NOT NULL,
   customerfirstname VARCHAR(25) NOT NULL,
   customerPhoneNum VARCHAR(10) NULL,
   PRIMARY KEY (customerid));
   
CREATE TABLE customerPhone (
   customerid CHAR(2) NOT NULL,
   customerPhoneNum VARCHAR(10) NULL,
   FOREIGN KEY(customerid) REFERENCES customer(customerid));

CREATE TABLE business (
   businessid CHAR(3) NOT NULL,
   businessname VARCHAR(25) NOT NULL,
   PRIMARY KEY (businessid));

CREATE TABLE transaction (
   transactionid INT(5) NOT NULL,
   productid CHAR(5) NOT NULL,
   businessid CHAR(5) NOT NULL,
   customerid CHAR(5) NOT NULL,
   PRIMARY KEY(transactionid),
   FOREIGN KEY(productid) REFERENCES product(productid),
   FOREIGN KEY(businessid) REFERENCES business(businessid),
   FOREIGN KEY(customerid) REFERENCES customer(customerid));

CREATE TABLE shareholders (
   holderid CHAR(3) NOT NULL,
   holdername VARCHAR(25) NOT NULL,
   PRIMARY KEY (holderid));

CREATE TABLE shares (
   shareid CHAR(3) NOT NULL,
   PRIMARY KEY (shareid),
   holderid CHAR(3) NOT NULL,
   businessid CHAR(3) NOT NULL,
   FOREIGN KEY(holderid) REFERENCES shareholders(holderid),
   FOREIGN KEY(businessid) REFERENCES business(businessid));

CREATE TABLE supplies (
   supplycategory CHAR(3) NOT NULL,
   distributor VARCHAR(25) NOT NULL,
   PRIMARY KEY (supplycategory));

CREATE TABLE supplier (
   supplierid CHAR(3) NOT NULL,
   suppliername VARCHAR(25) NOT NULL,
   supplycategory VARCHAR(25) NOT NULL,
   PRIMARY KEY (supplierid),
   FOREIGN KEY(supplycategory) REFERENCES supplies(supplycategory));

CREATE TABLE wholesale (
   supplierid CHAR(3) NOT NULL,
   businessid CHAR(3) NOT NULL,
   FOREIGN KEY(supplierid) REFERENCES supplier(supplierid),
   FOREIGN KEY(businessid) REFERENCES business(businessid));


/*PRODUCT TABLE*/
INSERT INTO product VALUES ('CY','Candy');
INSERT INTO product VALUES ('DH','Dog House');
INSERT INTO product VALUES ('HA', 'Hammer');

/*CUSTOMER TABLE*/
INSERT INTO customer VALUES ('A1', 'Thomas', 'Fredrick', '3235547765');
INSERT INTO customer VALUES ('B1', 'Redwater', 'Abigail', '3237889901');
INSERT INTO customer VALUES ('C1', 'Kilgore', 'Billy', '3235545542');

/*CUSTOMERPHONE TABLE*/
use transactions;
CREATE TABLE product( 
   productid CHAR(2) NOT NULL,
   productname VARCHAR(25) NOT NULL,
   PRIMARY KEY (productid) );

CREATE TABLE customer (
   customerid CHAR(2) NOT NULL,
   customerlastname VARCHAR(25) NOT NULL,
   customerfirstname VARCHAR(25) NOT NULL,
   customerPhoneNum VARCHAR(10) NULL,
   PRIMARY KEY (customerid));
   
CREATE TABLE customerPhone (
   customerid CHAR(2) NOT NULL,
   customerPhoneNum VARCHAR(10) NULL,
   FOREIGN KEY(customerid) REFERENCES customer(customerid));

CREATE TABLE business (
   businessid CHAR(3) NOT NULL,
   businessname VARCHAR(25) NOT NULL,
   PRIMARY KEY (businessid));

CREATE TABLE transaction (
   transactionid INT(5) NOT NULL,
   productid CHAR(5) NOT NULL,
   businessid CHAR(5) NOT NULL,
   customerid CHAR(5) NOT NULL,
   PRIMARY KEY(transactionid),
   FOREIGN KEY(productid) REFERENCES product(productid),
   FOREIGN KEY(businessid) REFERENCES business(businessid),
   FOREIGN KEY(customerid) REFERENCES customer(customerid));

CREATE TABLE shareholders (
   holderid CHAR(3) NOT NULL,
   holdername VARCHAR(25) NOT NULL,
   PRIMARY KEY (holderid));

CREATE TABLE shares (
   shareid CHAR(3) NOT NULL,
   PRIMARY KEY (shareid),
   holderid CHAR(3) NOT NULL,
   businessid CHAR(3) NOT NULL,
   FOREIGN KEY(holderid) REFERENCES shareholders(holderid),
   FOREIGN KEY(businessid) REFERENCES business(businessid));

CREATE TABLE supplies (
   supplycategory CHAR(3) NOT NULL,
   distributor VARCHAR(25) NOT NULL,
   PRIMARY KEY (supplycategory));

CREATE TABLE supplier (
   supplierid CHAR(3) NOT NULL,
   suppliername VARCHAR(25) NOT NULL,
   supplycategory VARCHAR(25) NOT NULL,
   PRIMARY KEY (supplierid),
   FOREIGN KEY(supplycategory) REFERENCES supplies(supplycategory));

CREATE TABLE wholesale (
   supplierid CHAR(3) NOT NULL,
   businessid CHAR(3) NOT NULL,
   FOREIGN KEY(supplierid) REFERENCES supplier(supplierid),
   FOREIGN KEY(businessid) REFERENCES business(businessid));


/*PRODUCT TABLE*/
INSERT INTO product VALUES ('CY','Candy');
INSERT INTO product VALUES ('CH','Chocolate');
INSERT INTO product VALUES ('DH','Dog House');
INSERT INTO product VALUES ('HA', 'Hammer');

/*CUSTOMER TABLE*/
INSERT INTO customer VALUES ('A1', 'Thomas', 'Fredrick', '3235547765');
INSERT INTO customer VALUES ('B1', 'Redwater', 'Abigail', '3237889901');
INSERT INTO customer VALUES ('C1', 'Kilgore', 'Billy', '3235545542');

/*CUSTOMERPHONE TABLE*/
INSERT INTO customerPhone VALUES ('A1', '3235547765');
INSERT INTO customerPhone VALUES ('B1', '3237889901');
INSERT INTO customerPhone VALUES ('C1', '3235545542');

/*BUSINESS TABLE*/
INSERT INTO business VALUES ('111', "Terry's Tools");
INSERT INTO business VALUES ('222', "Cornell's Corks");
INSERT INTO business VALUES ('333', "Walter's Wines");

/*SHAREHOLDERS TABLE*/
INSERT INTO shareholders VALUES ('AAA', "Ivan's Investments");
INSERT INTO shareholders VALUES ('BBB', 'Thomas Jane');
INSERT INTO shareholders VALUES ('CCC', "Fred's Funding");
INSERT INTO shareholders VALUES ('DDD', "John's Banking");
INSERT INTO shareholders VALUES ('EEE', "Jared's Construction");

/*SHARES TABLE
*References shareholderid and businessid*/
INSERT INTO shares VALUES ('A01', 'AAA', '111');
INSERT INTO shares VALUES ('A02', 'BBB', '222');
INSERT INTO shares VALUES ('A03', 'CCC', '333');
INSERT INTO shares VALUES ('A04', 'DDD', '111');
INSERT INTO shares VALUES ('A05', 'CCC', '222');
INSERT INTO shares VALUES ('A06', 'EEE', '111');

/*SUPPLIES TABLE
*'FOO' = food, 'TOO' = tools, "ELE" = electronics*/
INSERT INTO supplies VALUES ('FOO', "Bob's Boys");
INSERT INTO supplies VALUES ('TOO', "Perry's People");
INSERT INTO supplies VALUES ('ELE', "Momma's Movers");

/*SUPPLIER TABLE*/
INSERT INTO supplier VALUES ('000', "Sally's Supplies", 'FOO');
INSERT INTO supplier VALUES ('001', "Emie's Essentials", 'TOO');
INSERT INTO supplier VALUES ('002', "Neil's Necessities", 'ELE');

/*TRANSACTION TABLE
*References productid, businessid, and customerid*/
INSERT INTO transaction VALUES (67890, 'CY', '111', 'A1');
INSERT INTO transaction VALUES (12345, 'DH', '222', 'B1');
INSERT INTO transaction VALUES (10011, 'HA', '333', 'C1');
INSERT INTO transaction VALUES (12346, 'CH', '222', 'C1');


/*WHOLESALE TABLE
*References supplierid and businessid*/
INSERT INTO wholesale VALUES ('000', '111');
INSERT INTO wholesale VALUES ('001', '222');
INSERT INTO wholesale VALUES ('002', '333');
