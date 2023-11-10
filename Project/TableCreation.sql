-- turn the referencial integrity control on in SQLite

PRAGMA foreign_keys = ON;

-- g_class

CREATE TABLE g_class (
    gc_id INT,
    gc_name VARCHAR(30) NOT NULL,
    description VARCHAR(50),
	duration Varchar(30),
	level INT,
	c_id INT NOT NULL,
    PRIMARY KEY (gc_id),
    UNIQUE (gc_name),
	FOREIGN KEY (c_id) REFERENCES category
);

-- category

CREATE TABLE category (
	c_id INT,
	c_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (c_id),
	UNIQUE (c_name)
);

-- instructor

CREATE TABLE instructor (
	i_id INT,
	i_name VARCHAR(30) NOT NULL,
	date_of_birth DATE,
	PRIMARY KEY (i_id),
	UNIQUE (i_name)
);

-- hall

CREATE TABLE hall (
	h_id INT,
	h_name VARCHAR(30),
	no_places INT,
	PRIMARY KEY (h_id),
	UNIQUE (h_name)
);

-- can instruct

CREATE TABLE can_instruct (
	i_id INT,
	gc_id INT,
	PRIMARY KEY (i_id, gc_id),
	FOREIGN KEY (i_id) REFERENCES instructor,
	FOREIGN KEY (gc_id) REFERENCES g_class
);

-- timetable

CREATE TABLE tt_class (
	gc_id INT,
	day_of_week VARCHAR(30),
	start_time VARCHAR(30),
	end_time VARCHAR(30),
	max_participants INT,
	i_id INT,
	h_id INT,
	PRIMARY KEY (gc_id, day_of_week, start_time),
	FOREIGN KEY (gc_id) REFERENCES g_class,
	FOREIGN KEY (i_id) REFERENCES instructor,
	FOREIGN KEY (h_id) REFERENCES hall
);


