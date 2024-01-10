-- dept 데이터 넣기

insert into dept(deptno, dname, loc)values(10,'경리부','서울');
insert into dept(deptno, dname, loc)values(20,'영업부','경기');
select*from dept;

-- 수정하기

-- 40 서울

update dept set loc='seoul' where deptno=40;

-- 방금 바꾼 것을 원래대로 하세요

rollback;

-- 30 총무부 해외부

delete from dept where deptno=40;

delete from dept where deptno=30;