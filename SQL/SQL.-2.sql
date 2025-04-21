USE dlm;
select*from employee;
alter table employee modify column EName text(15);
INSERT INTO employee VALUES(1,'LAVANYA',80),(2,'GAYATHRI P',90);
INSERT INTO employee VALUES(3,'PREETHIGA A',90),(4,'SUBHA',90);
select * from employee;
truncate table employee;
rollback;
