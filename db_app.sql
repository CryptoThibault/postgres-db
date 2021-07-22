CREATE DATABASE db_app;
\c db_app;

CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY, 
  login VARCHAR(20) NOT NULL UNIQUE, 
  password VARCHAR(20) NOT NULL, 
  email VARCHAR(30) NOT NULL UNIQUE, 
  age SMALLINT CHECK  (age >= 18) NOT NULL, 
  bio TEXT DEFAULT 'Hello, I am a user!', 
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
INSERT INTO users (login, password, email, age) VALUES 
  ('alice', 'alice123', 'alice@mail.com', 20), 
  ('bob', 'bob456', 'bob@mail.com', 30), 
  ('charlie', 'charlie789', 'charlie@mail.com', 25), 
  ('dan', 'dan123', 'dan@mail.com', 40), 
  ('eve', 'eve456', 'eve@mail.com', 35), 
  ('faythe', 'faythe789', 'faythe@mail.com', 45);

CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY, 
  title VARCHAR(30) NOT NULL, 
  description TEXT, 
  price BIGINT DEFAULT 0, 
  seller_id INTEGER NOT NULL REFERENCES users(id), 
  buyer_id INTEGER REFERENCES users(id)
);
INSERT INTO products (title, description, price, seller_id) VALUES 
  ('Laptop', 'Bon etat', 20000, 5), 
  ('TV', 'occaz', 10000, 5), 
  ('Samsung', 'neuf', 15000, 1), 
  ('Moto', 'seulement 5000km au compteur', 400000, 1), 
  ('Headphones', 'copie ecouteurs apple', 500, 1), 
  ('Maison', 'plein sud', 90000000, 3), 
  ('Web app', 'Faite en react et node.js', 200000, 2);
