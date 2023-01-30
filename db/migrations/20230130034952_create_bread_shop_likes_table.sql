-- migrate:up
CREATE TABLE bread_shop_likes (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  bread_shop_id INT NOT NULL,
  user_id INT NOT NULL,
  CONSTRAINT bread_shop_likes_bread_shop_id FOREIGN KEY (bread_shop_id) REFERENCES bread_shops(id),
  CONSTRAINT bread_shop_likes_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);

-- migrate:down
DROP TABLE bread_shop_likes;
