-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE  craigslist;

\c  craigslist

CREATE TABLE post
(
  id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL UNIQUE REFERENCES user,
  title TEXT NOT NULL, 
  post_text TEXT NOT NULL,
  post_location INTEGER NOT NULL REFERENCES locations,
  category INTEGER NOT NULL REFERENCES category,
  post_region INTEGER NOT NULL REFERENCES region
);

CREATE TABLE category
(
  id SERIAL PRIMARY KEY,
  category_name TEXT UNIQUE NOT NULL
)

CREATE TABLE user
(
  id SERIAL PRIMARY KEY,
  username TEXT NOT NULL UNIQUE
)

CREATE TABLE locations
(
  id SERIAL PRIMARY KEY,
  location_name TEXT UNIQUE NOT NULL
)

CREATE TABLE region
(
  id SERIAL PRIMARY KEY,
  region_name TEXT UNIQUE NOT NULL
)