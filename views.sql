
--VIEW
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer TEXT,
    total_price REAL
);

INSERT INTO orders (customer, total_price)
VALUES ('Alice', 100.50), ('Bob', 75.00);

INSERT INTO orders (customer, total_price)
VALUES ('John', 255.50);

select * from orders;

SELECT customer, total_price
FROM orders
WHERE total_price > 80;

-- like createing function in python
-- def orders_above_80(..):
--   ...
CREATE VIEW orders_above_80 AS
SELECT customer, total_price
FROM orders
WHERE total_price > 80;

select * from orders_above_80 oa;

-- postgres -> materialized view