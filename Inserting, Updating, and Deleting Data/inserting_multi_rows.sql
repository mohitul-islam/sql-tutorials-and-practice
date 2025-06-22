use sql_store

-- Check previous data
SELECT * from shippers

-- insert multiple data
INSERT INTO
    shippers (name)
VALUES ("shipper_123"),
    ("shipper_12345"),
    ("shipper_12367")