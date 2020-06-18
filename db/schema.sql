DROP DATABASE IF EXISTS purrget;

CREATE DATABASE purrget;

USE purrget;

CREATE TABLE categories (
  ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category VARCHAR(255) NOT NULL UNIQUE KEY
);


CREATE TABLE specifications (
  ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  size VARCHAR(255),
  mouseCount INT,
  dogFriend VARCHAR(255),
  in_out VARCHAR(255),
  itemNum INT NOT NULL
);




CREATE TABLE cats (
  ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  catName VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  livesLeft INT NOT NULL,
  sex VARCHAR(255),
  specs INT NOT NULL,
  INDEX spec (specs),
    FOREIGN KEY (specs)
    REFERENCES specifications(ID)
    ON DELETE CASCADE,
  categoryID INT NOT NULL,
  INDEX categ_ind (categoryID),
  FOREIGN KEY (categoryID)
    REFERENCES categories(ID)
    ON DELETE CASCADE,
  UNIQUE KEY (catName)
);

INSERT INTO categories (category) VALUES ('Floof');
INSERT INTO categories (category) VALUES ('Chonk');
INSERT INTO categories (category) VALUES ('Hairless');
INSERT INTO categories (category) VALUES ('Adorable');



INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Gizmo', 4, 5, 'Male', 1, 4);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Small', 11, 'Yes', 'Indoor/Outdoor', 74829);

INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Kimono', 3, 7, 'Female', 2, 4);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Small', 3, 'Yes', 'Indoor', 28465);

INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Tuxedo', 2, 9, 'Male', 3, 4);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 1, 'No', 'Outdoor', 57842);

INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Xito', 1, 9, 'Male', 4, 4);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Large', 0, 'Yes', 'Indoor/Outdoor', 13758);

INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Covid', 8, 2, 'Male', 5, 4);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 23, 'Yes', 'Outdoor', 28347);

INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Grumps', 10, 1, 'Female', 6, 4);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 4, 'No', 'Indoor', 75832);

INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Midnyght', 1, 9, 'Female', 7, 1);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Small', 0, 'No', 'Indoor', 49563);

INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Sassy', 12, 3, 'Female', 8, 1);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 6, 'Yes', 'Indoor/Outdoor', 58739);

INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Luna', 1, 8, 'Female', 9, 1);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 6, 'Yes', 'Indoor', 39275);

INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Ash', 2, 9, 'Male', 10, 2);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Large', 2, 'Yes', 'Indoor', 78493);

INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Walnut', 5, 5, 'Male', 11, 2);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Small', 2, 'Yes', 'Indoor/Outdoor', 93847);

INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Sphynx', 15, 1, 'Male', 12, 3);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 38, 'No', 'Indoor/Outdoor', 29384);