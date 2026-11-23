DROP TABLE IF EXISTS basics.product_basic;

CREATE TABLE basics.product_basic (
    -- create an auto incrementing primary key
    id SERIAL PRIMARY KEY,

    -- name of the product, with a maximum length of 100 characters and cannot be null
    name VARCHAR(100) NOT NULL,
    
    -- description of the product, can be null
    description TEXT,

    -- stock of the product, with a default value of 0
    stock INTEGER DEFAULT 0,

    -- total views of the product, with a default value of 0 BiGINT is used to store large integers, and it can store values from -9223372036854775808 to 9223372036854775807
    total_views BIGINT DEFAULT 0,

    -- price of the product, with a precision of 10 and scale of 2, cannot be null example: 12345678.90, where 10 is the total number of digits and 2 is the number of digits to the right of the decimal point
    price NUMERIC(10, 2) NOT NULL,

    -- is_active column to indicate whether the product is active or not, with a default value of true
    is_active BOOLEAN DEFAULT true
);

INSERT INTO basics.product_basic (name, description,stock,total_views,price,is_active)
VALUES
    ('Product A', 'Description for Product A', 100, 250000, 19.99, true),
    ('Product B', 'Description for Product B', 50, 100000, 29.99, true),
    ('Product C', 'Description for Product C', 0, 151654, 39.99, false);


SELECT * FROM basics.product_basic;

SELECT id,name,stock,total_views
FROM basics.product_basic
WHERE is_active;
