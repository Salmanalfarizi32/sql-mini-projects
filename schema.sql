CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    price INTEGER
);

CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    date DATE
);

CREATE TABLE transaction_items (
    id SERIAL PRIMARY KEY,
    transaction_id INTEGER REFERENCES transactions(id),
    product_id INTEGER REFERENCES products(id),
    quantity INTEGER
);