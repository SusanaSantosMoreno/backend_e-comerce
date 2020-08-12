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
productUpdateDate DATETIME,
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
'images/products/Cactus_Colourpop.jpg', 10, 4, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Turmeric', 1, 1, 12, 'Face serum boost', 'Face serum boost', 
'images/products/Tumeric_Colourpop.jpg', 10, 4, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'BFD Oil Cleanser', 1, 1, 12, 'Face cleanser', 'Face cleanser', 
'images/products/BFDOilCleanser_Colourpop.jpg', 10, 5, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Strawberry', 1, 1, 14, 'Face milk', 'Face milk', 
'images/products/Strawberry_Colourpop.jpg', 10, 4, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Going Coconuts', 1, 2, 12, 'Shadow Palette', 'Shadow Palette', 
'images/products/GoingCoconuts_Colourpop.jpg', 10, 4, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Pretty Fresh', 1, 2, 16, 'Hyaluronic Hydrating Foundation', 'Hyaluronic Hydrating Foundation', 
'images/products/prettyFresh_Colourpop.jpg', 10, 4, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Puddin''', 1, 2, 8, 'Lux Liquid Lipstick', 'Lux Liquid Lipstick', 
'images/products/puddin_Colourpop.jpg', 10, 4, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Whatever', 1, 2, 18, 'Shadow Palette', 'Shadow Palette', 
'images/products/Whatever_Colourpop.jpg', 10, 5, '2020-08-11 18:00:00');   
INSERT INTO Product VALUES(NULL, 'Organic Virgin Coconut Oil', 2, 3, 16, 'Monoi moisture melt body and hair oil', 
'Monoi moisture melt body and hair oil', 'images/products/organicVirginCoconutOil_Dr.Organic.jpeg', 10, 5, 
'2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Curl Conditioner', 3, 3, 24, 'Super-hydrating curl conditioner',
'Super-hydrating curl conditioner', 'images/products/curlConditioner_Boucléme.jpg', 10, 4, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Grow Volume Champoo', 4, 3, 22, 'Volumizing shampoo', 
'Volumizing shampoo', 'images/products/growVolumeChampoo_Mádara.jpeg', 10, 4, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Siero finish anticrespo', 5, 3, 12, 'Anti-frizz finishing serum', 
'Anti-frizz finishing serum', 'images/products/sieroFinishAnticrespo_BiofficinaToscana.jpeg', 10, 5, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Rose Shimmering Body Powder', 1, 4, 12, 'Shimmering Body Powder', 
'Glow from within. Our new proprietary liquid-powder highlighter delivers instant glowing skin without 
the commitment. Super soft and effortlessly blendable, you’ll get the easiest, mess-free glow ever.', 
'images/products/roseShimmeringBodyPowder_Colourpop.jpg', 10, 4, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Angled Flat Top Kabuki Brush', 1, 4, 12, 'Body Brush', 
'This densely packed body brush is 100% vegan and buffs product into the skin effortlessly.', 
'images/products/angledFlatTopKabukiBrush_Colourpop.jpg', 10, 4, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Sol Body Lotion', 1, 4, 15, 'Body Lotion', 
'Super hydrating and smelling like a tropical vacay, our brand-new SOL Body Lotion is your 
go-to for nourished and moisturized skin on the daily.', 'images/products/solBodyLotion_Colourpop.jpg', 10, 5, 
'2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Glow Oil Collection', 1, 4, 58, 'Glow Oil Set', 
'you can have it all. get the complete Glow Oil Collection featuring our 4 glowing shades and body kabuki brush. 
change up your look or create a custom shade, they’re your new obsession.', 'images/products/GlowOilCollection_Colourpop.jpg', 10, 5, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Wet Skin 50spf Protection', 6, 5, 25, 'Dry touch tanning oil with beta-carotene', 
'Dry touch tanning oil with beta-carotene', 'images/products/WetSkin50spfProtection_YouthLab.jpeg', 10, 4, 
'2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Golden Sunshine Intensifier', 7, 5, 12, 'Tan intensifier with aloe vera and Shea Butter vitamin E', 
'Tan intensifier with aloe vera and Shea Butter vitamin E', 'images/products/goldenSunshineIntensifier_AustralianGold.jpeg', 10, 4, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Tanning Lotion', 8, 5, 10, 'Tan intensifier with guide colour streak free', 
'Tan intensifier with guide colour streak free', 'images/products/tanningLotion_ST.Moriz.jpeg', 10, 4, '2020-08-11 18:00:00');
INSERT INTO Product VALUES(NULL, 'Sun Care Value Set', 6, 5, 23, 'Sun care and body lotion for oily skin', 
'Sun care and body lotion for oily skin', 'images/products/sunCareValueSet_YouthLab.jpeg', 10, 5, '2020-08-11 18:00:00');