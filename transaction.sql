use transactions;
CREATE TABLE product( 
   productid CHAR(2) NOT NULL,
   productname VARCHAR(25) NOT NULL,
   PRIMARY KEY (productid) );

CREATE TABLE customer (
   customerid CHAR(2) NOT NULL,
   customerlastname VARCHAR(25) NOT NULL,
   customerfirstname VARCHAR(25) NOT NULL,
   customerPhoneNum INT(10) NULL,
   PRIMARY KEY (customerid));
   
CREATE TABLE customerPhone (
   customerid CHAR(2) NOT NULL,
   customerPhoneNum INT(10) NULL,
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


INSERT INTO product VALUES ('CY','Candy');
INSERT INTO product VALUES ('DH','Dog House');
