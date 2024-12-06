/* table created with foreign key */

CREATE TABLE Student (rollNO INT PRIMARY KEY, fName VARCHAR(25), lName VARCHAR(25),
								phoneNo INT NOT NULL,
								email VARCHAR(25) NOT NULL,
								cId INT,
								UNIQUE (phoneNo,email),
								CONSTRAINT fk_cId FOREIGN KEY(cId) REFERENCES course(courseId));

-- describe table 'student'
DESC Student;