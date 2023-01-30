-- migrate:up
CREATE TABLE bread_types (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50)
);

-- migrate:down
DROP TABLE bread_types;
