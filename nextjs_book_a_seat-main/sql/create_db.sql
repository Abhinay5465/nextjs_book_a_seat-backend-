-- Enable PostGIS extension
CREATE EXTENSION IF NOT EXISTS postgis;

-- Create schema
CREATE SCHEMA IF NOT EXISTS book_a_seat;

-- Create tables with corrected definitions
CREATE TABLE IF NOT EXISTS book_a_seat.table_objs (
	id SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL,
	x DOUBLE PRECISION NOT NULL,
	y DOUBLE PRECISION NOT NULL,
	width DOUBLE PRECISION NOT NULL,
	height DOUBLE PRECISION NOT NULL
);

CREATE TABLE IF NOT EXISTS book_a_seat.seat_objs (
	id SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL,
	x DOUBLE PRECISION NOT NULL,
	y DOUBLE PRECISION NOT NULL
);

CREATE TABLE IF NOT EXISTS book_a_seat.reservation (
	id SERIAL PRIMARY KEY,
	seat_id INT NOT NULL,
	username VARCHAR NOT NULL,
	start_date TIMESTAMP NOT NULL,
	end_date TIMESTAMP NOT NULL,
	CONSTRAINT fk_seat FOREIGN KEY (seat_id) REFERENCES book_a_seat.seat_objs (id)
);

-- Insert sample data
INSERT INTO book_a_seat.table_objs (name, x, y, width, height) VALUES
	('table 2', 49.0, 17.0, 166.0, 38.0),
	('table 1', 599.0, 87.0, 46.0, 161.0);

INSERT INTO book_a_seat.seat_objs (name, x, y) VALUES
	('chair 3', 95.0, 56.0),
	('chair 4', 168.0, 55.0),
	('chair 1', 599.0, 219.0),
	('chair 2', 599.0, 111.0);
