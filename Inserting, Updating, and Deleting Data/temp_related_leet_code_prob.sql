
-- 1) Drop and recreate the table
DROP TABLE IF EXISTS Weather;
CREATE TABLE Weather (
  id INT PRIMARY KEY,
  recordDate DATE NOT NULL,
  temperature INT NOT NULL
);

-- 2) Insert the example data
INSERT INTO Weather (id, recordDate, temperature) VALUES
  (1, '2015-01-01', 10),
  (2, '2015-01-02', 25),
  (3, '2015-01-03', 20),
  (4, '2015-01-04', 30);

-- 3) Verify the data
SELECT * FROM Weather ORDER BY recordDate;
-- +----+------------+-------------+
-- | id | recordDate | temperature |
-- +----+------------+-------------+
-- |  1 | 2015-01-01 |          10 |
-- |  2 | 2015-01-02 |          25 |
-- |  3 | 2015-01-03 |          20 |
-- |  4 | 2015-01-04 |          30 |
-- +----+------------+-------------+

-- 4) Run the “temperature higher than yesterday” query
SELECT
  w1.id
FROM
  Weather AS w1
  JOIN Weather AS w2
    ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE
  w1.temperature > w2.temperature;
-- Expected output:
-- +----+
-- | id |
-- +----+
-- |  2 |
-- |  4 |
-- +----+
