-- migrate:up
CREATE TABLE bread_shops (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL,
  shop_number VARCHAR(50) NOT NULL,
  business_hours VARCHAR(1000) NOT NULL,
  bread_type_id INT NOT NULL,
  CONSTRAINT bread_shops_bread_type_id FOREIGN KEY (bread_type_id) REFERENCES bread_types(id)
);

-- migrate:down
DROP TABLE bread_shops;
