DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
  id SERIAL4 PRIMARY KEY,
  customer_name VARCHAR(255),
  customer_address VARCHAR(255),
  quantity INT2,
  size INT2
);