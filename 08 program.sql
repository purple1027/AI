use sqldb;
select * from usertbl;
select * from buytbl;

select userid, name from usertbl
union all -- 중복된것 모두 합치기!
select userid, prodname from buytbl;

select userid, name from usertbl
union -- 중복된것 제거하고 합치기!
select userid, prodname from buytbl;


-- 요구사항 이름 전화번호로 주소록을 만들기 단, 전화번호가 없는 사람은 제외!

select name from usertbl where mobile1 is null;

select name, mobile1, mobile2 from usertbl
where mobile1 is not null ;

select name, mobile1, mobile2 from usertbl
 where name not in 
  (select name from usertbl where mobile1 is null);


-- sql 구문을 프로그래밍처럼 만들수 있다.

drop procedure if exists ifproc;
-- 스토어드 프로지서

delimiter $$
create procedure ifproc()
begin
declare var1 int;
set var1=100;
if var1=100 then
select '100 입니다';
else
select '아닙니다';
end if;
end $$
delimiter;


delimiter $$
create procedure ifProc()
begin
  declare var1 int; 
  set var1 = 100;
  if var1 = 100 then
     select '100입니다';
  else 
     select '아닙니다';
  end if;   
end $$
delimiter ;



call ifproc();

drop procedure if exists ifproc2;
use employees;
select*from employees;

delimiter $$
create procedure ifproc2()
begin
declare hiredate date;
declare curdate date;
declare days int;
select hire_date into hiredate from employees.employees
where emp_no=1001;
set curdate=current_date();
set days=datediff(curdate,hiredate);
if(days/365)>=5 then
select concat('입사한지', days, '일이나 지났습니다. 축하합니다');
else
select concat('입사한지', days, '일밖에 안되었네요, 열심히하세요');
end if;
end $$
delimiter ;

call ifproc2();



-- case

drop procedure if exists ifpro3;
delimiter $$
create procedure ifproc3()
begin
declare point int;
declare credit char(1);
set point=77;

if point>=90 then
set credit='A';
elseif point>=80 then
set credit='B';
elseif point>=70 then
set credit='C';
elseif point>=60 then
set credit='D';
else
set credit='F';

end if;
select concat('취득점수==>',point), concat('학점==>', credit);
end $$
delimiter ;
call ifproc3();




-- view

use sqldb ;
select *from usertbl;

create view vuser
as
select *from usertbl;

select * from vuser;

-- 뷰 사용하는 이유? 1. 보안 2. 복잡한 쿼리 단순화 시키기

use sqldb;

create view v1
as
select u.userID as'user id', u.name as 'user name', b.prodname as 'product name'
from usertbl u
inner join buytbl b
on u.userid=b.userid;


select * from v1;

select `user id`, `user name`, `product name` from v1
   where `user id`='KBS' order by `product name`;
   
   -- view 수정하기
   
   alter view v1
   as
   select
   u.name as 'name',u.addr 'addr', concat_ws('-', u.mobile1, u.mobile2) 'tel'
   from usertbl u
   inner join buytbl b
   on u.userid= b.userid;
   
   select*from v1;


select `name`,`tel` from v1;

create or replace view v1
as
 select name, birthyear from usertbl where name='김범수';
 
 select*from v1;
 
 -- 테이블 삽입이 가능할까?
 -- usertble을 복사하기
 
 create table cusertbl 
 as 
 select *from usertbl;
 
 
 
 
 -- 뷰만들기
 
 create or replace view v2
 as
 select userid, name, birthyear, addr, height from cusertbl;
 
 select * from v2; -- 뷰에 삽입되었다.
 insert into v2 values('HGD','홍길동', 2020, '서울','175');
 
 select * from cusertbl; -- 테이블에 삽입된다.alter
 desc cusertbl;
 
 
 -- 테이블 안에 삽입하기. 뷰에 보일까요?
 
 
 
 insert into cusertbl (userid, name, birthyear, addr)
  values ('ADM', '관리자', 2021,'인천');
 
 
 
 -- 테이블이 수정될까?
 
 select*from v2;
 select*from cusertbl;
 update v2 set birthyear=2019 where name='홍길동';
 
 
 
 -- 삭제도 될까?
 
  select*from v2;
  select*from cusertbl;
  delete from v2 where name='관리자';


 
--  view를 삭제하고 싶다
 drop view v2; 
   
   
   
-- 테이블스페이스: 물리적 공간
 
 -- ----------인덱스
 -- 자료를 찾을 때 색인 표를 붙여 두는 것
 -- 목적: 빠르게 찾으려는 목적!
 -- B-tree 
 -- 장점: 검색 속도가 빠르다. 시스템의 성능이 향상된다.
 -- 단점: 추가적인 공간이 필요하다. 대학 데이터베이스 전체 용량의 10%가 필요하다
 -- 처음 인덱스를 생성하는데 시간이 많이 소요된다.
 -- 데이터 변경 작업이 자주 일어나는 경우 오히려 성능이 나빠질 수 있다.
 
 
 -- 인덱스를 생성해야 하는 경우
 -- 인덱스는 열단위에 생성한다.
 -- where 절에서 사용되는 열에 인덱스를 만들어야 한다.
 -- 자주 사용하는 열에 생성한다.
 
 
 -- primary key, unique 지정한 열은 자동으로 인덱스 처리가 된다!
 
 -- 스토어드 프로그램 // 고급 SQL문 상위 레벨!

 -- 종류: 스토어드 프로시져, 스토어드 함수, 커서, 트리거

/*

스토어드 프로시져 형식

delimiter $$
 create procedure 이름(입력 또는 출력의 파라미터 (매개변수와 같은 것!)
 Begin
     내용
 end$$
delimter ;
call 이름(실제값들);

*/ 
 
 
 delimiter $$
 create procedure p1()
 begin
 select sysdate() ;
 end $$
 delimiter ;
 
 call p1();
 
 
 select * from usertbl;
 
 drop procedure if exists p3;
 
  delimiter $$
 create procedure p3(in birthyear int, height int)
 begin
 select * from usertbl where birthyear>=birth and height>= h ;
 end $$
 delimiter ;

   
call p3(1973, 170);
  
  
  drop procedure p4;
 -- testTbl안에 데이터를 삽입하고 검색결과를 출력하는 프로시저
 
 create table testtbl
 (id int auto_increment primary key, 
 name char(10));
 insert into testtbl values(null,'홍길동');
 
 delimiter $$
 create procedure p4(in invar char(10), out outvar int)
 begin
 insert into testtbl values(null, invar);
 select count(id) into outvar from testtbl;
 end $$
 delimiter ;

  
  
  call p4('이순신',@countvar);   
  select @countvar ;
   
   
   
   -- 445p
   
   delimiter $$
   create procedure ifelseproc(in username varchar(10))
   begin
   declare byear int;
   select birthyear into byear from usertbl where name=username;
   if (byear>=1980) then
   select '아직 젊군요';
   
   else
   select '나이가 지긋하시네요';
   end if;
   end $$
   delimiter ;

call ifelseproc('조용필');   
select @nameout; 
   
   
   
   
   
   
   
