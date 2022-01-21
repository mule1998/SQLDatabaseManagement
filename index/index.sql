mysql> EXPLAIN SELECT user_name FROM temporary_mis WHERE technology = 'android';
+----+-------------+---------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table         | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+---------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | temporary_mis | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 1884 |    10.00 | Using where |
+----+-------------+---------------+------------+------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0.27 sec)

mysql> CREATE INDEX technology_index ON temporary_mis(technology);
Query OK, 0 rows affected (3.41 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> EXPLAIN SELECT user_name FROM temporary_mis WHERE technology = 'android';
+----+-------------+---------------+------------+------+------------------+------------------+---------+-------+------+----------+-------+
| id | select_type | table         | partitions | type | possible_keys    | key              | key_len | ref   | rows | filtered | Extra |
+----+-------------+---------------+------------+------+------------------+------------------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | temporary_mis | NULL       | ref  | technology_index | technology_index | 402     | const |  460 |   100.00 | NULL  |
+----+-------------+---------------+------------+------+------------------+------------------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)

mysql> SHOW INDEXES FROM temporary_mis;
+---------------+------------+------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table         | Non_unique | Key_name         | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------------+------------+------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| temporary_mis |          0 | PRIMARY          |            1 | boot_time   | A         |        1884 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| temporary_mis |          1 | technology_index |            1 | technology  | A         |          11 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+---------------+------------+------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
2 rows in set (0.17 sec)

mysql> ^C
mysql> exit
