/* 
create a table log_subpart with attributes like
user name, technology, disc write count
partition  by range and subpartition by hash on disc_write_count
*/

CREATE TABLE log_subpart(user_name varchar(300), technology varchar(24), disc_write_count int)
PARTITION BY RANGE (disc_write_count)
SUBPARTITION BY HASH (disc_write_count)
SUBPARTITIONS 3
( 
PARTITION p0_disc_below50k VALUES LESS THAN (50000), 
PARTITION p1_disc_below150k VALUES LESS THAN (150000),
PARTITION p2_disc_below300k VALUES LESS THAN (300000),
PARTITION p3_disc_above300k VALUES LESS THAN MAXVALUE
);

INSERT INTO log_subpart SELECT user_name, technology, disk_write_count
 FROM temporary_MIS ORDER BY disk_write_count;

SELECT TABLE_NAME, PARTITION_NAME, SUBPARTITION_NAME, TABLE_ROWS 
FROM INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_NAME = 'log_subpart';

EXPLAIN SELECT * FROM log_subpart WHERE disc_write_count = 432803;