CREATE TABLE task_type (
  id int NOT NULL,
  type_name varchar(20) NOT NULL,
  comment varchar(50) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT chk_id_range CHECK (id BETWEEN 1 AND 99)
);

CREATE TABLE task (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    type_id INT NOT NULL,
    title VARCHAR(50) NOT NULL,
    detail TEXT,
    deadline DATETIME NOT NULL
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(70) NOT NULL,
    password VARCHAR(60) NOT NULL,
    enabled BOOLEAN NOT NULL,
    authority VARCHAR(50) NOT NULL,
    tempkey VARCHAR(255) DEFAULT NULL
);