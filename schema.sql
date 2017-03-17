DROP TABLE IF EXISTS items;

CREATE TABLE items(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(300) NOT NULL,
  price decimal(10,2) NOT NULL,
  picture TEXT,
  info TEXT,
  store_id INTEGER
);

CREATE TABLE stores(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(300) NOT NULL,
  address VARCHAR(400) NOT NULL,
  phone VARCHAR(20) NOT NULL
);

CREATE TABLE customers(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100),
  email VARCHAR(200) NOT NULL,
  password_digest VARCHAR(400) NOT NULL
);

CREATE TABLE comments(
  id SERIAL PRIMARY KEY,
  body TEXT,
  item_id INTEGER,
  customer_id INTEGER
)
