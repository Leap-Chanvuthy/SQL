
CREATE DATABASE Assignment_III ;

CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT
);

INSERT INTO users (id, name, age) VALUES
(1, 'John Doe', 25),
(2, 'Jane Smith', 30),
(3, 'Mike Johnson', 40),
(4, 'Sarah Williams', 28),
(5, 'David Brown', 35),
(6, 'Emily Davis', 32),
(7, 'Daniel Wilson', 45),
(8, 'Olivia Thompson', 27),
(9, 'Michael Anderson', 39),
(10, 'Sophia Martinez', 31);

--To retrieve the first 10 records from the "users" table:

SELECT *
FROM users
ORDER BY id
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

-- To retrieve records 11 to 20 from the "users" table:

SELECT *
FROM users
ORDER BY id
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;
