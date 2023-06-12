DROP DATABASE craigslist_db;
CREATE DATABASE craigslist_db;
\c craigslist_db

CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    name TEXT,
    location TEXT
);

CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    name TEXT,
    regions_id INTEGER REFERENCES regions
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT,
    preferred_region_id INTEGER REFERENCES regions
    
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    regions_id INTEGER REFERENCES regions,
    location_id INTEGER REFERENCES locations,
    title TEXT,
    users_id INTEGER REFERENCES users,
    price INTEGER,
    about TEXT

);