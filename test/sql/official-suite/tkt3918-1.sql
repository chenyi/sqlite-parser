-- original: tkt3918.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

PRAGMA page_size = 1024;
    PRAGMA auto_vacuum = incremental;
    CREATE TABLE t1(i, x)
;INSERT INTO t1 VALUES(1, randstr(1000,1000));
    INSERT INTO t1 VALUES(2, zeroblob(248*1020 + 100));
    INSERT INTO t1 VALUES(3, zeroblob(2*1020 + 100))
;DELETE FROM t1 WHERE i = 2;
    DELETE FROM t1 WHERE i = 1;
    DELETE FROM t1 WHERE i = 3
;PRAGMA incremental_vacuum = 1
;CREATE TABLE t2(a, b);