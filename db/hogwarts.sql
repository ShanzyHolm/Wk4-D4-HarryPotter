DROP TABLE students;
DROP TABLE houses;

CREATE TABLE houses (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE students (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  house_id INT REFERENCES houses(id) ON DELETE CASCADE,
  age INT
);
