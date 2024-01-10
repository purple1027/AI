--테이블 만들기

--create table 테이블명 (컬럼명 자료명 제약조건):

create table dept_mission (
    dno number(2),
    dname varchar2(14),  --가변형 문자
    loc varchar2(13));
    
    
create table emp_mission(
   eno number(4),
   ename varchar2(10),
   dno number(2));
   
create table emp01(
  empno number(4),
  ename varchar2(14),
  sal  number(7,3));
  
  
  --구조 변경하기
  --구조를 바꾸면 테이블 자료가 자료가 삭제된다
  
  alter table emp01
    add(birth date);
    
  alter table emp_mission
  add (deptno number(4), address varchar2(20) );
 
 
  alter table emp01
    drop column birth; --drop column 컬럼명
  
  alter table emp_mission  
    drop column deptno;

  alter table emp_mission  
    drop column addr;
   
 -- 테이블의 구조보기
 
  desc emp01;
  desc emp_mission;
  desc emp_mi;


  alter table emp01
   modify(ename varchar2(14));
   
   
 -- 테이블명의 이름 변경하기
 
 rename emp_mission to emp_mi;
 
 --테이블 삭제하기
 
 drop table emp_mi;
 
 --emp의 검색결과 (select)로 나온 것을 테이블로 만들기
 
 create table emp_copy
 as
 select*from emp;
 
 desc emp;
 desc emp_copy;
 
 select*from emp_copy;
 
 desc emp;
 desc emp_copy;
 
 --emp_copy 테이블의 comm 컬럼 삭제하기
 alter table emp_copy
  drop column comn;
 
 --emp_copy 테이블의 hiredate 컬럼 이름을 hire로 바꾸기
 
 alter table emp_copy
  rename column hiredate to hire;


select* from emp_copy;  

--모든 데이터를 제거하기
delete from emp_copy;
truncate table emp_copy;

--딕셔너리: 데이터베이스 서버에서 제공해주는 테이블
--딕셔너리는 수정은 안되고 읽기만 가능하다.
--용도: 해당 데이터베이스를 권리할 때 주로 사용함


select * from user_tables; --데이터베이스 안에 테이블의 목록들을 모두 본다.
select * from user_views;

select * from all_tables;
select * from all_tables where table_name='EMP'; 

select*from dba_tables; --데이터베이스 관리자는 오라클에서 이름이 지정되어 있음 sys
                        -- system 논리적 장치 관리하는 사람 - 소프트웨어  
                        -- 필요에 따라서 사용자를 만들어 쓸 수 있다.
                        

--dml문 insert, update, delete문 레코드 삽입, 수정, 삭제하기.




create table emp01(
  empno number(4),
  ename varchar2(14),
  sal  number(7,3));

select * from emp01;

insert into emp01 values(1000, '홍길동', 123.5);
insert into emp01(ename, empno, sal) values('이순신',1001,256.7); 

--행에 특정 열만 넣는다.
--번호, 이름만 넣기

insert into emp01 (empno, ename)values(1002,'김수민');
insert into emp01(sal) values(100);

--이름을 공백으로 넣기

insert into emp01(empno,ename, sal) values(1004,' ',50);

desc emp01;

--입사일 컬럼 추가하기
alter table emp01  
  add hire date;

-- 박수미, 1010, 80, 23/01/09
insert into emp01(ename, empno, sal, hire) values('박수미',1010,80,'2023-01-09');

insert into emp01(empno,ename, sal, hire) values(1011,'최경수',0,'2023-01-08');

--수정하기
--update 테이블명 set 컬럼명 = 새로운 값 where 조건절

select*from emp01;

update emp01 set sal =200 where ename ='홍길동';

update emp01 set ename='이진수' where empno =1004;

update emp01 set sal= sal+100, hire='2022-10-25' where empno=1010;

update emp01 set sal= sal+200;



--
--delete from 테이블명 where 조건절

delete from emp01 where sal>=500;

--트랜젝션

delete from emp01;
rollback;
select * from emp01;
commit;


update emp01 set sal=nvl(sal+200,200);

-- 모든사람의 입사일을 오늘로 바꾸기!
select * from emp01;
update emp01 set hire=sysdate;
rollback;
commit;

--제약조건

select*from dept;

--insert into dept values(10,'test','test');10은 프라이머리 키 구조를 만들어서 유일하여야 하므로 오류가 남
--insert into dept values(null,'test,'test'); null은 프라이머리 키 구조를 만들어서 null이 아니어야 하므로 오류가 남

create table pTab(
  code number(4) primary key,
  name varchar2(14)
);

select * from user_constraints where table_name='PTAB';

--name 제약조건을 not null을 추가하기!

 alter table pTab
   modify name varchar2(14) not null;

--데이터 삽입하기

insert into ptab(code, name)values(1010,'a');
--insert into ptab(code, name)values(1010,'b');   
--insert into ptab(code, name)values(1011,'null');  
 
 
 --id 컬럼 추가하기 varchar2(10)
 alter table ptab 
   add id varchar2(10);

desc ptab; 

--id 컬럼에 제약조건은 unique로 만들기

alter table ptab
   modify id varchar2(10) unique;
   
select *from user_constraints where table_name='PTAB';

insert into ptab(code,name,id) values(1012,'c','a100');
--insert into ptab(code,name,id) values(1012,'d','a100'); a 유일키 위배



