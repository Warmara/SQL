-- h1t9
-- Jina_Marek_151908530

CREATE TABLE product (
    id              INT not null,
	brand			varchar(50) not null
    name            VARCHAR(50) NOT NULL,
    terrain	        VARCHAR(50),
    price	        FLOAT,
    PRIMARY KEY (id),
    UNIQUE (name)
);
 

INSERT INTO product
VALUES (1, 'Atomic', 'Redster S8', 'race', 949.00);  

INSERT INTO product
VALUES (4, 'Atomic', 'Maven 86', 'all mountain', 499.99);

INSERT INTO product
VALUES (6, 'Head', 'Kore 85', 'all mountain', 399);

INSERT INTO product
VALUES (7, 'Blizzard', 'Phoenix R13', 'piste', 649);

