-- original: trigger7.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE TABLE t1(x, y)
;CREATE TRIGGER r1 AFTER UPDATE OF x ON t1 BEGIN
        SELECT '___update_t1.x___';
      END;
      CREATE TRIGGER r2 AFTER UPDATE OF y ON t1 BEGIN
        SELECT '___update_t1.y___';
      END
;EXPLAIN UPDATE t1 SET x=5
;EXPLAIN UPDATE t1 SET x=5
;EXPLAIN UPDATE t1 SET y=5
;EXPLAIN UPDATE t1 SET y=5
;EXPLAIN UPDATE t1 SET rowid=5
;EXPLAIN UPDATE t1 SET rowid=5
;CREATE TABLE t2(x,y,z);
    CREATE TRIGGER t2r1 AFTER INSERT ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r2 BEFORE INSERT ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r3 AFTER UPDATE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r4 BEFORE UPDATE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r5 AFTER DELETE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r6 BEFORE DELETE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r7 AFTER INSERT ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r8 BEFORE INSERT ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r9 AFTER UPDATE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r10 BEFORE UPDATE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r11 AFTER DELETE ON t2 BEGIN SELECT 1; END;
    CREATE TRIGGER t2r12 BEFORE DELETE ON t2 BEGIN SELECT 1; END;
    DROP TRIGGER t2r6
;PRAGMA writable_schema=on;
    UPDATE sqlite_master SET sql='nonsense';