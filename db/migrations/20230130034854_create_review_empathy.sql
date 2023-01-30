-- migrate:up
CREATE TABLE review_empathy (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  review_id INT NOT NULL,
  user_id INT NOT NULL,
  CONSTRAINT review_empathy_review_id FOREIGN KEY (review_id) REFERENCES reviews(id),
  CONSTRAINT review_empathy_user_id FOREIGN KEY (review_id) REFERENCES users(id)
);

-- migrate:down
DROP TABLE review_empathy;
