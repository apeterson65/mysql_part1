--  task 1. 
  CREATE DATABASE shirts_db;
  
  use shirts_db;
--  check to ensure you are in the shirt_db 
  SELECT database();  

-- task 2. 
  CREATE TABLE shirts
    (
      shirt_id INT NOT NULL AUTO_INCREMENT,
      article VARCHAR(100),
      color VARCHAR(100),
      shirt_size VARCHAR(100),
      last_worn INT,
      PRIMARY KEY(shirt_id)
    );
  
 
  DESC shirts;
 
-- task 3. 
  INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
  ('t-shirt', 'white', 'S', 10),
  ('t-shirt', 'green', 'S', 200),
  ('polo shirt', 'black', 'M', 10),
  ('tank top', 'blue', 'S', 50),
  ('t-shirt', 'pink', 'S', 0),
  ('polo shirt', 'red', 'M', 5),
  ('tank top', 'white', 'S', 200),
  ('tank top', 'blue', 'M', 15);
 
  SELECT * FROM shirts;
-- task 4. 
  INSERT INTO shirts(color, article, shirt_size, last_worn) 
  VALUES('purple', 'polo shirt', 'medium', 50);
 
  SELECT * FROM shirts;

  -- task5. 
    SELECT article, color FROM shirts; 
  -- task 6.
    SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size = 'M';
  -- task 7.
    UPDATE shirts SET  shirt_size ='L' WHERE article = 'polo shirt';
  -- task 8.
    UPDATE shirts SET  last_worn  = 0 WHERE last_worn = 15;
  -- task 9.
    UPDATE shirts SET  shirt_size = 'XS', color = 'off white' WHERE color = 'white';
  -- task 10.
    DELETE FROM shirts WHERE last_worn = 200;
  -- task 11. 
    DELETE FROM shirts WHERE article = 'tank top';
  -- task 12.
    DELETE FROM shirts; 
  -- task 13.
    DROP TABLE shirts; 