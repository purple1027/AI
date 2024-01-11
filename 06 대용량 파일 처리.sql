-- sqldb 사용하러 가기
use sqldb; 

drop table if exists testtbl4 ; 
select * from buytbl ;
-- 요구사항 : 상품명, 가격 테이블 만들기
-- 1단계 테이블 만들기
create table if not exists testtbl4 
  ( prodName varchar(40) not null,
    price int not null ) ;
-- 2단계 삽입한다.
select distinct prodName, price from buytbl ;

insert into testtbl4  
       select distinct prodName, price from buytbl ;

select * from testtbl4 order by price desc ;

-- 청바지 가격을 100으로 수정하기
update testtbl4 set price = 100 where prodName = '청바지' ;
-- 가장 높은 가격인 것을 찾아서 10% 인하하기
-- 1단계 가장 높은 가격 것 찾기
select price from testtbl4 order by price desc limit 0, 1;
-- 2단계 10% 인하하기  **** with문으로 사용하기 
-- update시에 동일한 테이블을 서브쿼리 사용하여 update 할 수 없다. 
-- 오류 
update testtbl4  set price = price - price * 0.1 
   where price =
   ( select price from ( select price from testtbl4 order by price desc limit 1 ) as t );

update testtbl4  set price = price - price * 0.1 
 where  price = 
   ( select price from ( select price from testtbl4 order by price desc limit 0, 1 ) as t  ); 

select * from testtbl4;


-- delete문 
select * from buytbl;
-- copyBuy 테이블 복사해서 만들기 
create table if not exists copyBuy
   select * from buytbl;
select * from copyBuy;

-- copyBuy amount가 제일 작은 것 찾아서 삭제하기
-- 1단계 amount가 제일 작은 것 찾기
select amount from copyBuy  order by amount asc limit 1;
-- 2단계 삭제하기
delete from copyBuy  
where 
amount = (  select amount from 
               ( select amount from copyBuy  order by amount asc limit 1 ) as t );

select * from copyBuy ;

-- 1. with 절 사용하기
-- 뷰, 파생테이블, 임시테이블, 가상 테이블 : 잠깐 쓰고 버리기. 메모리에서 사라지는 것 !


use sqldb;
select * from usertbl;
select * from buytbl;
 
-- 요구사항 이름 총구매액(price * amount )
select userid, sum( price ) * sum(amount) as '총구매액' from buytbl group by userId ;
-- 이름을 출력하기
select name from usertbl;

select userid, sum( price * amount) from buytbl, usertbl 
                                    where buytbl.userid = usertbl.userid  
 group by userId ;

select * from usertbl, buytbl; -- usertbl 행과 buytbl 행이 모두 곱해져 나온다 
select * from usertbl, buytbl where usertbl.userid = buytbl.userid ; -- 교집합 나온다 

-- userid, name, amount, price 두개 테이블에 각각 다른 항목 검색하기 
select usertbl.userid,  usertbl.name, buytbl.amount, buytbl.price 
      from usertbl, buytbl
      where usertbl.userid = buytbl.userid ;

select usertbl.name,  buytbl.amount * buytbl.price 
      from usertbl, buytbl
      where usertbl.userid = buytbl.userid ;
      
      
      select usertbl.name,  buytbl.amount * buytbl.price 
      from usertbl, buytbl
      where usertbl.userid = buytbl.userid ;
   
   
-- 애러발생
-- select usertbl.name,  buytbl.amount * buytbl.price 
 --     from usertbl, buytbl
  --    where usertbl.userid = buytbl.userid
   --   group by buytbl.userid;
      
  select u.userid, u.name,  buytbl.amount * buytbl.price 
      from usertbl u, buytbl b
	  where u.userID=b.userid;
      
-- 위의 쿼리를 가상테이블 만들기

with t(id, name, total)
as
(
select u.userid, u.name,  b.amount * b.price 
      from usertbl u, buytbl b
	  where u.userID=b.userid
)
   
select name, sum(total) from t group by name;
   

with  t( tid, total ) 
as
(
  select userid, sum( price  * amount) from buytbl group by userId
)
select tid, total from t ; 

select  usertbl.name, buytbl.price  from usertbl, buytbl ;



-- 회원테이블에서 각 지역별로 가장 큰 키 1명씩 뽑은 후 그 사람들의 키의 평균을 구하라

select addr, max(height) from usertbl group by addr;
-- 2단계 가상 테이블 만들기

with t(avgheight)
as
(
 select max(height) from usertbl group by addr
)
 select avg(avgheight) from t;
 
 -- group name 전자의 price가 최저를 구해서 평균을 구하세요
 
 select * from  buytbl;
 
 select groupName, min(price) from buytbl group by groupName;
 
 with t(minprice)
 as
 (
  select min(price) from buytbl group by groupName
 )

select avg(minprice) from t 


-- -------------------------------------------------7장 

set @var1= 10;
set @var2= '제품판매처: 삼성';
select @var1, @var2;

select @var2, prodName from buytbl;


--  데이터 형 변환 

select * from buytbl;
select avg(amount) from buytbl;
-- 실수형을 정수형으로 변환하기

select cast(avg(amount) as signed integer) from buytbl;
select convert(avg(amount), signed integer) from buytbl;

-- 정수형을 실수형으로

set @var3=3;
select cast(@var3 as float);

select convert(@var3, float);

select cast(@var3 as CHAR);

-- if 함수

set @v1=10;
set @v2=20;
set @v3=100;

-- 가장 큰 수 구하기

select if(@v1>@v2, if( @v1>@v3, @v1, @v3), if(@v2>@v3, @v2, @v3) );

-- 가장 작은 수 구하기

-- select if(@v1<@v2, if(@v1<@v3, @v1, @v3) if(@v2<@v3, @v2, @v3));

select if(@v1<@v2, if(@v1>@v3, @v1,@v3), if(@v2>@v3, @v2, @v3));

-- if null(수식1, 수식2)

select ifnull(200,null);

select ifnull(null,200);
select ifnull(100,200);
select ifnull(null,null);

-- nullif(수식1,수식2)

select nullif(100,100);
select nullif(300,100);

-- case when else end

select case 1
 when 1 then '일'
 when 2 then '이'
 when 3 then '삼'
 else '1,2,3이 아님'
 
end as'case 연습'; 

select * from buytbl;
-- userid kbs 김범수, jyp 조용필, 나머지는 모름

 select case userID
	 when 'KBS' then '김범수'
	 when 'JYP' then '조용필'
	 else '모름'
	 end as '이름', userID
	 
 from buytbl;


-- 문자열 함수

select concat_ws(',','100','200');
select elt(1,'하나','둘','셋');
select field('김','이','박','최','김');
select find_in_set('김', '이,박,최,김, 송');
select instr('이,박,최,김,송','김');
select locate('김','이,박,최,김,송');

select format(123456.123456,4);

select hex(10), oct(8), bin(15);
select insert('abcdefghi', 3, 4, '0000');

select trim('   abc      ');

select substring('대한민국만세',3,2);

select substring_index('cafe.naver.com.co.kr','.',-2);

select ceiling(4.7), floor(4.7), round(4.7);

select pow(2,10);

select rand(),floor(1+rand()*(7-1));

select truncate(1235456577,-3);

-- 날짜, 시간 함수

-- select mdate, adddate(mdate,interval 31day) 
-- from usertbl;

select * from usertbl;

select date(now()), time(now()), now();
select sysdate();

-- -------------------------------- 261p 대용량 파일 처리하기 - 파일 올리고 내리기 (업로드, 다운로드)


-- 1단계 데이터베이스를 만든다

create database moviedb;

-- 2단계 데이터베이스를 사용한다(활성화)

use moviedb;

-- 3단계 테이블 만들기

create table movietbl
(
movie_id int,
movie_title varchar(30),
movie_director varchar(20),
movie_star varchar(20),
movie_script longtext, -- 경로를 써주는 것!
movie_film longblob -- 경로를 써주는 것!

);


insert into movietbl
values
 (1,'쉰들러리스트','스필버그','리암니슨',
 load_file('D:/AI/study folder/temp/movies/Schindler.txt'),
 load_file('D:/AI/study folder/temp/movies/Schindler.mp4') 
 );
 
 -- 5단계
 select*from movietbl;
 
 -- longtext, longblob가 null이 나오는 이유
 -- 1 이유: 용량이 모자라서
 show variables like 'max_allowed_packet' ;
 
 -- 2 이유: 경로가 달라서
show variables like 'secure_file_priv';

-- 환경설정하기 (카카오톡 확인)

-- 내려받기 : 데이터베이스에 있는 것을 컴퓨터로 다운로드하기
-- 1단계: (텍스트) 내릴 것을 확인하기
select movie_script from movietbl where movie_id= 1 ;

-- 2단계: 내리기
select movie_script from movietbl where movie_id= 1 
 into outfile'D:/AI/study folder/temp/movies/movies_script_copy.txt'
 lines terminated by '\\,';


-- 동영상 파일 내리기
-- 1단계 내릴것을 확인할것

select movie_film from movietbl where movie_id= 1 ;

-- 2단계 동영상 파일 내리기
select movie_film from movietbl where movie_id= 1 
  into outfile 'D:/AI/study folder/temp/movies/movies_film_copy.mp4' ;

 
 -- 피벗의 구현
 
 use sqldb;
 select*from usertbl;
 select*from buytbl;
 
 create table pivotTest
 (
 uName char(3),
 season char(2),
 amount int
 );
 
 insert into pivotTest values
  ('김범수','겨울',10), ('박가을','여름',14), ('박지영','가을',25), ('홍길동','봄',30),
  ('이순신','겨울',35), ('배은영','여름',45), ('김나래','봄',17), ('이선아','겨울',45);
 
 select*from pivotTest;
 
 -- 피벗: 함수 사용해서 보기 편하게 만들기!
 
 
 select uname '이름', sum(if(season='봄', amount, 0)) '봄', 
                   sum(if(season='여름', amount, 0))'여름', 
                   sum(if(season='가을', amount, 0))'가을', 
                   sum(if(season='겨울', amount, 0))'겨울', 
                   sum(amount)합계
 
 from pivotTest group by uname;
 
 
 
 -- 270 문제풀기
 
select season,
  sum(if(uname='김범수',amount,0))'김범수',
sum(if(uname='윤종신',amount,0))'윤종신',
sum(amount)'합계'

from pivotTest group by season;

-- json 파일 처리하기
-- 1. json 만들기
-- json.array()


select json_array(1, "abc", Null, True, curtime());

-- json_object()

#select json_object("score", 87","name", "hong", "age", "25");
#set @jsonData= json_object ("score", 87","name", "hong", "age", "25");


select @jsonData;


select * from usertbl;

select json_object(userid, addr)
    
from usertbl;



select * from usertbl;

select 

 json_object(userid, json_array(mobile1, mobile2))
    
from usertbl;


-- 외부로 내보내기. json 파일로 만들기

select 
 json_object(userid, json_array(mobile1, mobile2))
from usertbl
into outfile'D:/AI/study folder/temp/movies/jsonoutput.json';




--  자료형이 json인지 판단하기
-- json_valid()


set @jsonData = json_object ("score", 87,"name", "hong", "age", 25);
select json_valid(@jsonData);

select
if (json_valid(@jsonData)=1,
'json 자료다',
'json 자료가 아니다');

-- json_insert

SET @j = '{"a": 1, "b": [2,3]}';
select json_insert(@j, '$.c', 10); -- 키가 새것이면 삽입된다
select json_insert(@j, '$.a', 10); --  키가 이미 있으면 삽입되지 않는다
select json_insert(@j, '$.b', '[2,3,4]'); --  키가 이미 있으면 삽입되지 않는다


-- replace

SET @j = '{"a": 1, "b": [2,3]}';

select json_replace(@j, '$.a',10); -- 키가 있으면 수정하기
select json_replace(@j, '$.c',10); -- 키가 없으면 아무것도 안하기


-- ----------------조인 (join)

select * from usertbl ;
select * from buytbl ;

select *  from usertbl 
   inner join  buytbl
   on usertbl.userid = buytbl.userid ; 
 
select usertbl.name, buytbl.prodName  from usertbl 
   inner join  buytbl
   on usertbl.userid = buytbl.userid 
where  birthyear  between 1970 and 1980 ;   
   
select usertbl.name, buytbl.prodName  from usertbl 
   inner join  buytbl
   on usertbl.userid = buytbl.userid 
where  birthyear  between 1970 and 1980 order by usertbl.name limit 3 ;  

-- select usertbl.name, buytbl.prodName  from usertbl 
--                    5                        1
--    inner join  buytbl
--                  2
--    on usertbl.userid = buytbl.userid 
--                     3
-- where  birthyear  between 1970 and 1980 
--                      4
-- order by usertbl.name
--              6
-- limit 3 ; 
--     7



select u.name, b.prodName  from usertbl u
   inner join  buytbl b
   on u.userid = b.userid 
where u.userid='BBK'; 



-- 282

create table stdTBl
(stdName varchar(10) not null primary key,
addr char(4) not null
);

create table clubtbl
(clubName varchar(10) not null primary key,
roomNo char(4) not null
);

create table stdclubTbl (
   num int auto_increment not null primary key,
   stdName varchar(10) not null,
   clubName varchar(10) not null,
   foreign key(stdName) references stdTbl(stdName),
   foreign key(clubName) references clubTbl(clubName)
);



insert into stdTbl
values
( '김범수','경남'), ('성시경','서울'), ('조용필','경기'),('은지원','경북'), ('바비킴','서울') ; 

insert into clubTbl
values
( '수영','101호'), ('바둑','102호'), ('축구','103호'),('봉사','104호') ; 

insert into stdclubtbl
values
( null, '김범수','바둑'), (null,'김범수','축구'),
(null,'조용필','축구'),(null,'은지원','축구'),
(null, '은지원','봉사'), (null, '바비킴','봉사') ; 

-- 1. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 학생을 기준으로 학생이름, 지역, 가입한 동아리, 동아리방 보기

-- 2. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 축구를 선택하신 분의 이름과 지역은? 김범수 경남, 조용필 경기, 은지원 경북

-- 3. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 은지원이 선택한 동아리와 동아리방은?

-- 4. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 서울 지역에 사는 사람이 선택한 동아리명은?



select s.stdname, s.addr, c.clubname, c.roomNo
from stdtbl s
 inner join stdclubtbl sc
 on s.stdName= sc.stdName
 inner join clubtbl c
 on sc.clubname=c.clubname ;
 
 
 
 select 
   s.stdname, s.addr
 from stdtbl s
	 inner join stdclubtbl sc
	 on s.stdname=sc.stdname
	 inner join clubtbl c
	 on sc.clubname= c.clubname
 where sc.clubname='축구';
 
 
 
 select
   c.clubName, c.roomNo 
 from stdtbl s
	 inner join stdclubtbl sc
	 on s.stdname=sc.stdname
	 inner join clubtbl c
	 on sc.clubname= c.clubname
 where sc.stdname='은지원';
 
 
  select
   s.stdname, sc.clubname 
 from stdtbl s
	 inner join stdclubtbl sc
	 on s.stdname=sc.stdname
	 inner join clubtbl c
	 on sc.clubname= c.clubname
 where s.addr='서울';
 
   select
   c.roomno, s.stdname 
 from stdtbl s
	 inner join stdclubtbl sc
	 on s.stdname=sc.stdname
	 inner join clubtbl c
	 on sc.clubname= c.clubname
 where c.roomno in('101호' '102호');
 
 
 -- outer join
 -- join에 만족하지 않은 행 까지 포함하기 (null 까지 포함)
 
select  
   *
from stdtbl s
   left outer join stdclubtbl sc 
   on s.stdName = sc.stdName 
   left outer join clubtbl c 
   on sc.clubName = c.clubName 

union   

select  
   *
from stdtbl s
   left outer join stdclubtbl sc 
   on s.stdName = sc.stdName 
   right outer join clubtbl c 
   on sc.clubName = c.clubName;
   
   
   
   -- 4번
   
select s.stdName, sc.clubname
from stdtbl s
 left outer join stdclubtbl sc
 on s.stdName= sc.stdName
 left outer join clubtbl c
 on sc.clubname=c.clubname 
 
where s.addr='서울';
 
 
 -- cross join 비강추
 
 select*from stdtbl, stdclubtbl, clubtbl;
 
 select*from stdtbl
   cross join stdclubtbl
   cross join clubtbl;


-- self join
   
   USE sqldb;
CREATE TABLE empTbl (emp CHAR(3), manager CHAR(3), empTel VARCHAR(8));

INSERT INTO empTbl VALUES('나사장',NULL,'0000');
INSERT INTO empTbl VALUES('김재무','나사장','2222');
INSERT INTO empTbl VALUES('김부장','김재무','2222-1');
INSERT INTO empTbl VALUES('이부장','김재무','2222-2');
INSERT INTO empTbl VALUES('우대리','이부장','2222-2-1');
INSERT INTO empTbl VALUES('지사원','이부장','2222-2-2');
INSERT INTO empTbl VALUES('이영업','나사장','1111');
INSERT INTO empTbl VALUES('한과장','이영업','1111-1');
INSERT INTO empTbl VALUES('최정보','나사장','3333');
INSERT INTO empTbl VALUES('윤차장','최정보','3333-1');
INSERT INTO empTbl VALUES('이주임','윤차장','3333-1-1');
   
 
 -- 우대리의 상관의 연락처 구하기
 
 select
 e1.empTel
 from emptbl e
   inner join emptbl e1
   on e.manager=e1.emp
where e.emp='우대리';
   
   
   
   
 
   
   
   
   
 