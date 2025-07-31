-- Products
INSERT INTO products (id, name, price) VALUES
(1, 'Espresso', 18000),
(2, 'Latte', 22000),
(3, 'Americano', 20000),
(4, 'Cappuccino', 23000),
(5, 'Matcha Latte', 25000);

-- Transactions
INSERT INTO transactions (id, date) VALUES
(1, '2025-07-25'),
(2, '2025-07-25'),
(3, '2025-07-26'),
(4, '2025-07-27'),
(5, '2025-07-27');

-- Transaction Items
INSERT INTO transaction_items (id, transaction_id, product_id, quantity) VALUES
(1, 1, 1, 2),
(2, 1, 2, 1),
(3, 2, 3, 1),
(4, 3, 4, 3),
(5, 4, 1, 1),
(6, 4, 5, 2),
(7, 5, 2, 1);