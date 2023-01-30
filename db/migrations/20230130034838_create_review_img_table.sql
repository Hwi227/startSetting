-- migrate:up
CREATE TABLE review_img (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  img_url VARCHAR(1000) NOT NULL,
  review_id INT NOT NULL,
  CONSTRAINT review_img_review_id FOREIGN KEY (review_id) REFERENCES reviews(id)
);

-- migrate:down
DROP TABLE review_img;
