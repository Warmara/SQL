CREATE TABLE product (
    product_id      INT,
    product_name    VARCHAR(50) NOT NULL,
    category        VARCHAR(30),
    weight          INT,
    energy          INT,
    PRIMARY KEY (product_id),
    UNIQUE (product_name)
);
 
INSERT INTO product
VALUES (1, 'Fazerina', 'chocolate bar', 37, 548);  

INSERT INTO product
VALUES (2, 'Jim', 'chocolate bar', 14, 366);  

INSERT INTO product
VALUES (3, 'Salta Katten', 'candy bag', 140, 351);

INSERT INTO product
VALUES (4, 'Dumle mix', 'chocolate bag', 220, 474);

INSERT INTO product
VALUES (5, 'Tupla Double Layer Banana', 'chocolate bar', 48, 471);  

INSERT INTO product
VALUES (6, 'Bilar Original', 'candy bag', NULL, NULL);

INSERT INTO product
VALUES (7, 'Sisu Horna', 'candy bag', 40, 370);

 
 --- My Assignment ---
 
 -- I also edited product table a little
 
PRAGMA foreign_keys = ON;

CREATE TABLE sweet_shop (
    sweet_shop_id    INT,
    sweet_shop_name  VARCHAR(50) NOT NULL,
    address	         VARCHAR(50),
    PRIMARY KEY (sweet_shop_id),
    UNIQUE (sweet_shop_name)
);


Create table sells (
	sweet_shop_id	 INT NOT NULL,
	product_id		 INT NOT NULL,
	PRIMARY KEY (sweet_shop_id, product_id),
	FOREIGN KEY (sweet_shop_id) REFERENCES sweet_shop,
	FOREIGN KEY (product_id) REFERENCES product
) ;

 --- sweet_shop content --- 
INSERT INTO sweet_shop
VALUES (1, 'Bobs Bon Bons', 'Bens Street 35');  

INSERT INTO sweet_shop
VALUES (2, 'CJJ3s Candy Shop', 'Magic st. 69');  

INSERT INTO sweet_shop
VALUES (3, 'Mikas Lolipops', 'Relaxed st. 5');

 --- sells content ---

INSERT INTO sells
VALUES (1, 1);  

INSERT INTO sells
VALUES (1, 3); 

INSERT INTO sells
VALUES (1, 4); 

INSERT INTO sells
VALUES (1, 4); 

INSERT INTO sells
VALUES (2, 2); 

INSERT INTO sells
VALUES (2, 3); 

INSERT INTO sells
VALUES (2, 4); 

INSERT INTO sells
VALUES (3, 1); 

 --- End of Assignment --


