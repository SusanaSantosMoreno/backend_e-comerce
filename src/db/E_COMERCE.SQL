CREATE DATABASE IF NOT EXISTS E_COMERCE;

USE E_COMERCE;

CREATE TABLE Brand (
brandId INT AUTO_INCREMENT PRIMARY KEY,
brandName VARCHAR(255)
);

CREATE TABLE Category(
categoryId INT AUTO_INCREMENT PRIMARY KEY,
categoryName VARCHAR(255),
categoryIcon VARCHAR(255)
);

CREATE TABLE Product (
productId INT AUTO_INCREMENT PRIMARY KEY,
productName VARCHAR(255),
productBrand INT,
productCategory INT,
productPrice DOUBLE,
productShortDesc VARCHAR(255),
productLongDesc TEXT,
productImage VARCHAR(255),
productStock INT,
productRating DOUBLE,
FOREIGN KEY (productBrand) REFERENCES Brand(brandId),
FOREIGN KEY (productCategory) REFERENCES Category(categoryId)
);

INSERT INTO BRAND(brandName) VALUES('ColourPop');
INSERT INTO BRAND(brandName) VALUES('Dr.Organic');
INSERT INTO BRAND(brandName) VALUES('Boucléme');
INSERT INTO BRAND(brandName) VALUES('Mádara');
INSERT INTO BRAND(brandName) VALUES('Biofficina Toscana');
INSERT INTO BRAND(brandName) VALUES('Youth Lab');
INSERT INTO BRAND(brandName) VALUES('Australian Gold');
INSERT INTO BRAND(brandName) VALUES('ST.Moriz');

INSERT INTO Category(categoryName, categoryIcon) VALUES('Face','/images/icons/face_icon.svg');
INSERT INTO Category(categoryName, categoryIcon) VALUES('Make-up','/images/icons/makeup_icon.svg');
INSERT INTO Category(categoryName, categoryIcon) VALUES('Hair','/images/icons/hair_icon.svg');
INSERT INTO Category(categoryName, categoryIcon) VALUES('Body','/images/icons/body_icon.svg');
INSERT INTO Category(categoryName, categoryIcon) VALUES('Sun','/images/icons/sun_icon.svg');

INSERT INTO Product VALUES(NULL, 'Cactus', 1, 1, 12, 'Face serum boost', 'Face serum boost', 
'images/products/Cactus_Colourpop.jpg', 10, 4.5);
INSERT INTO Product VALUES(NULL, 'Turmeric', 1, 1, 12, 'Face serum boost', 'Face serum boost', 
'images/products/Tumeric_Colourpop.jpg', 10, 4);
INSERT INTO Product VALUES(NULL, 'BFD Oil Cleanser', 1, 1, 12, 'Face cleanser', 'Face cleanser', 
'images/products/BFDOilCleanser_Colourpop.jpg', 10, 4.5);
INSERT INTO Product VALUES(NULL, 'Strawberry', 1, 1, 14, 'Face milk', 'Face milk', 
'images/products/Strawberry_Colourpop.jpg', 10, 4.5);