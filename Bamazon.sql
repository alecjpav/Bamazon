DROP DATABASE IF EXISTS bamazonDB;

CREATE DATABASE bamazonDB;

USE bamazonDB;

DROP TABLE IF EXISTS `Products`;

CREATE TABLE `Products` (
  `ItemID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(99) NOT NULL,
  `DepartmentName` varchar(99) NOT NULL,
  `Price` int(11) NOT NULL,
  `StockQuantity` int(11) NOT NULL,
  PRIMARY KEY (`ItemID`)
);

DROP TABLE IF EXISTS `Departments`;

CREATE TABLE `Departments` (
  `DepartmentID` int(11) NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(99) NOT NULL,
  `OverHeadCosts` int(11) NOT NULL,
  `TotalSales` int(11) NOT NULL,
  PRIMARY KEY (`DepartmentID`)
);

LOCK TABLES `Departments` WRITE;

INSERT INTO `Departments` (`DepartmentID`, `DepartmentName`, `OverHeadCosts`, `TotalSales`)
VALUES
	(1,'Electronics',5500,7750),
	(2,'Sports & Outdoors',2200,4600),
	(3,'Home Appliances',9875,14400),
	(4,'Automotive Parts & Accessories',1200,2150),
	(5,'Clothing',740,675);

UNLOCK TABLES;

LOCK TABLES `Products` WRITE;

INSERT INTO `Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`)
VALUES
	(1,'TV','Electronics',700,3),
	(2,'Laptop','Electronics',800,4),	
    (3,'Xbox One','Electronics',250,5),
	(4,'PlayStation 4','Electronics',350,12),
	(5,'Bicycle','Sports & Outdoors',400,7),
	(6,'Longboard','Sports & Outdoors',200,18),
	(7,'Dishwasher','Home Appliances',500,14),
	(8,'Refrigerator','Home Appliances',700,20),
	(9,'Battery','Automotive Parts & Accessories',150,11),
	(10,'Tire','Automotive Parts & Accessories',100,25),
	(11,'Jacket','Clothing',70,12),
	(12,'Sneakers','Clothing',125,9);

UNLOCK TABLES;