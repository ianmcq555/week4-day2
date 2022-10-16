CREATE TABLE customer(
    customer_id serial primary key,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(100),
    phone varchar(15),
    billing_address varchar(100)
);

create TABLE Movies(
    film_id serial primary key,
    title varchar(50)
);

create table Register(
    payment_id serial primary key,
    customer_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    ticket_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (ticket_id) REFERENCES Ticket(ticket_id)
);

CREATE TABLE Concessions(
    product_id serial primary key,
    amount NUMERIC,
    prod_name varchar(50)

);

CREATE TABLE Ticket(
    ticket_id serial primary key,
    section varchar(50),
    seat varchar(50),
    price NUMERIC,
    film_id INTEGER NOT NULL
);

/* seperation for insertion -----------------------------------------------------------------------------------------------------------*/

INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    email,
    phone,
    billing_address
)VALUES(
	1,
	'Joel',
	'Carter',
    'JC@yahoo.com',
    '345-456-7654',
	'555 Circle Dr Chicago,IL 60614'
);

INSERT INTO Movies(
    film_id,
    title
)VALUES(
    1,
    'Brother Bear'
);

INSERT INTO Concessions(
    product_id,
    amount
)VALUES(
    1,
    5.99
);

INSERT INTO Ticket(
    ticket_id,
    section,
    seat,
    price,
    film_id
)VALUES(
    1,
    '1',
    '1',
    10.99,
    1
);

INSERT INTO Register(
    payment_id,
    customer_id,
    product_id,
    ticket_id
)VALUES(
    1,
    1,
    1,
    1
);