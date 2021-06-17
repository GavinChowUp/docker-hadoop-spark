DROP DATABASE IF EXISTS test_env;
CREATE DATABASE test_env;
USE test_env;
CREATE TABLE IF NOT EXISTS deal_record
(
    record_id           TEXT,
    dealer_id           TEXT,
    deal_total_price    DOUBLE,
    deal_time           TIMESTAMP

);
INSERT INTO deal_record VALUES('R0001', 'D0001', 100, '2021-06-01 10:10:10');
INSERT INTO deal_record VALUES('R0002', 'D0001', 200, '2021-06-02 10:10:10');
INSERT INTO deal_record VALUES('R0003', 'D0002', 50, '2021-06-03 10:10:10');
INSERT INTO deal_record VALUES('R0004', 'D0002', 50, '2021-06-04 10:10:10');

CREATE TABLE IF NOT EXISTS deal_item_list
(
    record_id           TEXT,
    item_id             TEXT,
    item_name           TEXT,
    item_price          DOUBLE,
    item_number         DOUBLE
);
INSERT INTO deal_item_list VALUES('R0001', 'I0001', 'milk', 50, 1.0);
INSERT INTO deal_item_list VALUES('R0001', 'I0002', 'apple', 5, 10.0);
INSERT INTO deal_item_list VALUES('R0002', 'I0001', 'cake', 10, 1.0);
INSERT INTO deal_item_list VALUES('R0002', 'I0003', 'raio', 15, 2.0);
INSERT INTO deal_item_list VALUES('R0002', 'I0004', 'banana', 2, 5.0);
INSERT INTO deal_item_list VALUES('R0002', 'I0005', 'milk', 50, 1.0);
INSERT INTO deal_item_list VALUES('R0003', 'I0001', 'beer', 5, 6.0);
INSERT INTO deal_item_list VALUES('R0003', 'I0002', 'peanut', 5, 4.0);
INSERT INTO deal_item_list VALUES('R0004', 'I0001', 'beer', 5, 6.0);
INSERT INTO deal_item_list VALUES('R0004', 'I0002', 'peanut', 5, 4.0);


CREATE TABLE IF NOT EXISTS dw_dim_dealer
(
    dealer_id               String,
    dealer_name             String,
    dealer_gender           String
);
INSERT INTO dw_dim_dealer VALUES('D0001', 'Miss Lee', 'female');
INSERT INTO dw_dim_dealer VALUES('D0002', 'Mr. Wang', 'male');

