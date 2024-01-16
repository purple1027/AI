-- stored procedure
-- 설계 --> 인스턴스화 --> 사용

use sqldb ;
use usertbl ;
delimiter $$ 
create procedure userproc()
begin 
select * from usertbl;
end $$
delimiter

call userproc();


desc usertbl; -- 테이블의 구조 보기
-- 파라미터 넣어 처리 형식

drop procedure userproc1

delimiter $$ 
create procedure userproc1(in _addr varchar(2))
begin 
select * from usertbl where addr=_addr;
end $$
delimiter ;
call userproc1('서울');


-- userId BBK 또는 LJB 검색하기
drop procedure userpro3

delimiter $$ 
create procedure userpro3(in _userId1 varchar(10), in _userId2 varchar(10))
begin 
select * from usertbl where userid in (_userId1, _userId2);
end $$
delimiter ;

call userpro3('BBK','LJB');

select*from buytbl;
desc buytbl;
-- 문제) 그룹네임을 입력하면 price 값이 가장 큰 것을 찾기, 변수로 받기
-- 처리결과 입력은 전자 답은 노트북 1000
--            의류 답은 청바지 50
--             서적 답은 떡 15


drop procedure  buyPro1;

delimiter $$
create procedure  buyPro1( in _gN  char(4),  out _price int )
begin 
 select  max(price) into _price from buytbl where  groupName = _gN ;
end $$
delimiter ;

call buyPro1( '전자', @priceVar) ;
call buyPro1( '의류', @priceVar) ;
call buyPro1( '서적', @priceVar) ;
select @priceVar 

--  2) procedure function 함수 결과 1개 나온다  return 452페이지
-- 주의 사항 : 사전에 해야 되는 작업 -  함수생성권한 제한을 풀어 주기 
set global log_bin_trust_function_creators = 1 ;

-- 기본예
delimiter $$
create function userFun1( v1 int, v2 int )  -- 입력 해줄 자료형 
    returns int  -- 출력해 줄 자료형 선언 
begin
   return v1 + v2 ;
end $$ ;
delimiter ;

select  userFun1( 100, 200 ); -- 실행은 select문으로 하기 

-- 요구사항 출생년도를 입력하면 나이가 생성되는 함수 만들기
delimiter $$
create function ageFun( birthYear int  )
   returns int
begin
    declare age int;
    set age = year( curdate() ) - birthYear;
    return  age ;
end $$   
delimiter ; 

select ageFun( 2000 ) into @age2000;
select ageFun( 2020 ) into @age2020;
select @age2000 - @age2020 ;
-- ------------

drop table cUserTbl;

create table cUserTbl
as
select * from usertbl;

select * from cUserTbl;

alter table cUserTbl
  add column years int ; -- 컬럼 추가하기


-- 요구사항 mDate를 이용해서 근무년수를 구하는 함수를 만들기 
 
-- 1단계 함수를 만든다

drop function yearsfun;

 delimiter $$
create function yearsfun( _y date  ) -- mdate 컬럼 입력 받기
    returns int
begin
    declare yy int;
    set yy = year( curdate() ) - year(_y); -- 2024-2013 =11
    return  yy ;
end $$   
delimiter ; 


desc cusertbl;

-- 2단계 함수를 호출해서 근무년수를 구한다.

select mDate into @mdate from cusertbl where userid='bbk';
select @mdate;

select yearsfun(@mdate) into @years;
select @years;

-- 3번쨰 단계 : years컬럼 업데이트하기

update cusertbl set years =@years where userid='bbk';
select*from cusertbl;

-- EJW에 대하여 업데이트 하기


select mDate into @mdate from cusertbl where userid='EJW';
select @mdate;

select yearsfun(@mdate) into @years;
select @years;

update cusertbl set years =@years where userid='EJW';
select*from cusertbl;

-- KBS에 대하여 업데이트 하기



select mDate into @mdate from cusertbl where userid='KBS';
select @mdate;

select yearsfun(@mdate) into @years;
select @years;

update cusertbl set years =@years where userid='KBS';
select*from cusertbl;

-- cursor 반복처리
-- 포인터: 가르키다. 자동으로 한행을 읽으면 아래로 내려간다.
-- 파일시작 BOF, begin of file / EOF, end of file
-- 처리순서 1단계 파일을 연다. 2단계 파일을 읽는다. 행단위로 읽는다 / 3단계 파일 끝 4. 닫는다.alter
-- fetch
/* 커서형식
delimiter $$
 create procedure cursorproc()
 
 begin
  -- 변수선언 6번 줄부터 10번줄 까지
  -- 커서 선언이 들어감
  -- 반복에 대한 조건이 들어감
  -- 커서 열기
  -- 반복문이 들어감
  -- 반복문이 끝나면 결과가 나옴. 결과출력
  -- 커서 닫기
  
 end $$
 
delimiter; */

-- 고객의 평균키를 구하는 프로시져 (커서이용하기)

delimiter $$
 create procedure cursorproc()
 
 begin
  -- 변수선언 6번 줄부터 10번줄 까지
  
  declare userHeight int; -- 고객의 키 
  declare cnt int default 0 ; -- 고객의 인원수
  declare totalHeight int default 0; -- 키의 합계
  declare endOfRow boolean dafualt false;
  -- 커서 선언이 들어감
  
  declare userCursor cursor for
	select height from usertbl; -- 문제가 평균키를 구하기. 
  -- 반복에 대한 조건이 들어감
  declare continue handler
  for not found set endOfRaw = TRUE;
  
  
  -- 커서 열기
 open userCursor;
  -- 반복문이 들어감
  cursor_loop; loop
  fetch userCursor into userheight;
  if endofRaw then
   leave cursor_loop;
  end if ;
  set cnt=cnt+1;
  set totalheight = totalheight+userheight;
  end loop cursor_loop;
  -- 반복문이 끝나면 결과가 나옴. 결과출력
  
  select concat('고객키의 평균==>', (totalheight/cnt);
  -- 커서 닫기
  close userCursor;
  
 end $$
 
delimiter;

--호출하기
call cursorProc();


-- 고객테이블 고객등급열을 하나 추가하기 등급 구하기

use sqldb;
select * from usertbl ;


select * from buytbl order by userid;

drop procedure gP;

delimiter $$
 create procedure  gP()
 begin
   -- 변수 선언 6줄~10줄까지
   declare id varchar(10) ; -- 사용자 id 'BBK'
   declare hap bigInt ; -- 총구매합 1920
   declare userGrade varchar(20) ; -- 등급 '최우수고객' 
   declare endOfRow boolean default False ; 
   -- 커서 선언  
   declare userCursor cursor for 
      select  u.userid, sum( b.price * b.amount ) 
      from  buytbl b
         right outer join  usertbl u
         on b.userid = u.userid
      group by u.userid, u.name ;   
         
   -- 반복 조건  
   declare continue handler
       for not found set endOfRow = TRUE;
       
   -- 커서 열기
   open userCursor ;
   -- 반복문
   grade_loop : Loop 
      fetch  userCursor into id, hap ; 
      if endOfRow  then
          leave grade_loop;
      end if; 
      
      case 
        when ( hap >= 1500 ) then set userGrade = '최우수고객' ; 
        when ( hap >= 1000 ) then set userGrade = '우수고객' ; 
        when ( hap >= 1 ) then set userGrade = '일반고객' ; 
        else set userGrade = '잠재고객' ; 
      end case ;
    
      update usertbl set r1 = userGrade where userId = id; 
      
   end Loop  grade_loop ;
   
   -- 커서 닫기
   close userCursor ;
 end $$
delimiter ;

call gP();


select * from usertbl;

alter table usertbl
  add column r1 varchar(20) ; 
  



-- 4) 트리거

create database if not exists testDb;
use testDb;
create table if not exists testTb (id int, txt varchar(10));
insert into testtbl values (1,'레드벨벳');
insert into testtbl values(2,'잇지');
insert into testtbl values(3,'블랙핑크');

select * from testtbl;

drop trigger if exists testtrg;

delimiter//
create trigger testtrg
  after delete
  on testTbl
  for each row
begin
 set @msg = '가수 그룹이 삭제됩니다'
end//
delimiter;

set @msg =' ';
insert into testtbl values(4,'마마무');
select @msg;
update testtbl set txt='마마마무' where id=4;

-- --------

use sqldb;
create table backup_userTbl 
 (
  userID     CHAR(8) NOT NULL PRIMARY KEY, -- 사용자 아이디(PK)
  name       VARCHAR(10) NOT NULL, -- 이름
  birthYear   INT NOT NULL,  -- 출생년도
  addr        CHAR(2) NOT NULL, -- 지역(경기,서울,경남 식으로 2글자만입력)
  mobile1   CHAR(3), -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
  mobile2   CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈제외)
  height       SMALLINT,  -- 키
  mDate       DATE,  -- 회원 가입일
  modType char(2), -- 변경된 타입, '수정' 또는 '삭제'
  modDate date, -- 변경된 날짜
  modUser varchar(256) -- 변경한 사용자 
 ) ;
 
 -- 트리거 작성하기
 
 delimiter //
create trigger  but  -- 언제할래? update 후에  무엇을 할래? usertbl의 모든 행을  
   after update 
   on usertbl 
   for each row 
 begin -- 어떻게 ? 내용 
    insert into backup_userTbl  
    values ( OLD.userID, OLD.name, OLD.birthYear, old.addr, 
             old.mobile1, old.mobile2, old.height, old.mDate,
             '수정', curdate(), current_user() 
             ) ;
 end //
delimiter ; 

select * from usertbl ;

update usertbl set birthYear = 1977 where userId='BBK' ;
update usertbl set addr = '서울' where userId='EJW' ;

select * from backup_userTbl ;


 
 





 
select *from usertbl;

update usertbl set birthyear =1977 where userid='bbk';
update usertbl set addr ='서울' where userid='EJW';
select *from backup_userTbl



