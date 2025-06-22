-- basicall this will be the inserting data with fk table data
-- Examples are below

select * from orders

INSERT INTO
    orders (
        customer_id,
        order_date,
        status
    )
VALUES (1, "2024-01-01", 1)

SELECT * from order_items

INSERT INTO
    order_items
VALUES (LAST_INSERT_ID(), 1, 1, 2.3),
    (LAST_INSERT_ID(), 2, 2, 2.5)

-- Get the last insert id
SELECT LAST_INSERT_ID()