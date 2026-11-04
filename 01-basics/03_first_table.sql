DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students (
    --create an auto incrementing primary key
    -- 1,2,3 and so on
    --Primary key is a unique identifier for each record in the table
    id SERIAL PRIMARY KEY,

    --postgres will reject if it is not present
    name TEXT NOT NULL,

    --unique means no two records can have the same email address
    email TEXT UNIQUE NOT NULL,

    --CHECK constraint is used to limit the values that can be placed in a column
    age INT CHECK (age >= 18),

    --TIMESTAMP is a data type that stores both date and time
    --DEFAULT NOW() means that if no value is provided for this column, it will automatically be set to the current date and time when the record is created
    created_at TIMESTAMP DEFAULT NOW()

);

--insert a record into the students table
INSERT INTO basics.students (name, email, age)
VALUES
    ('Ankith', 'ankith@gmail.com', 22),
    ('Bhima','bhima@gmail.com', 22),
    ('Chaitanya','chaitanya@gmail.com', 22);

SELECT * from basics.students;
