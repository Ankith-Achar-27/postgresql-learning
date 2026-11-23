CREATE TABLE IF NOT EXISTS basics.app_events (
    -- create a primary key with UUID data type and default value generated using gen_random_uuid() function
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    event_name TEXT NOT NULL,

   -- JSONB data type is used to store JSON data in a binary format, which allows for efficient storage and retrieval of JSON data. The default value is set to an empty JSON object '{}'::JSONB, which means that if no value is provided for this column, it will be set to an empty JSON object.
    metadata JSONB DEFAULT '{}'::JSONB,

    -- created_at column to store the timestamp of when the record was created, with a default value of the current timestamp
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.app_events (event_name, metadata)
VALUES
    ('user_signup', '{"browser": "chrome", "plan": "premium"}'),
    ('user_login', '{"user_id": 1, "ip_address": "192.168.1.1"}'),
    ('purchase', '{"user_id": 1, "product_id": 101, "amount": 29.99}'),
    ('user_logout', '{"user_id": 1, "duration": 3600}');

--SELECT * FROM basics.app_events;

SELECT event_name,
    metadata->>'browser' AS browser
FROM basics.app_events
WHERE metadata ? 'browser';
