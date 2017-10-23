USE adlister_db;

DROP TABLE IF EXISTS ads;

CREATE TABLE IF NOT EXISTS ads (
  id          BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id     BIGINT UNSIGNED NOT NULL,
  title       VARCHAR(40)     NOT NULL,
  description TEXT            NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
    ON DELETE CASCADE
);
