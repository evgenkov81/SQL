create table customers
(
    id           SERIAL PRIMARY KEY,
    name         varchar not null,
    surname      varchar not null,
    age          int     not null,
    phone_number varchar
);

create table orders
(
    id           SERIAL PRIMARY KEY,
    customer_id  integer,
    date         DATE default now(),
    product_name VARCHAR,
    amount       integer,
    FOREIGN KEY (customer_id) REFERENCES customers (id)
);

SELECT product_name
FROM orders
         JOIN customers c on c.id = orders.customer_id
WHERE upper(c.name) = upper('alexey');

