DROP TABLE IF EXISTS basics.product_basic;

CREATE TABLE basics.product_basic (
    id SERIAL PRIMARY KEY,

    name VARCHAR(100) NOT NULL,

    description TEXT,

    stock INTEGER DEFAULT 0,

    total_views BIGINT DEFAULT 0,

    price NUMERIC(10, 2) NOT NULL,

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
