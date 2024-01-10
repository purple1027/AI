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

create database moviedb;
use moviedb;
create table movietbl
 (movie_id int,
  movie_title varchar(30),
  movie_director varchar(20),
  movie_star varchar(20),
  movie_script longtext, 
  movie_film longblob) default charset=utf8mb4;
  
  insert into movietbl
   values(1,'쉰들러리스트','스필버그','리암니슨',
		  load_file('D:/AI/study folder/temp/movies/Schindler.txt'),
          load_file('D:/AI/study folder/temp/movies/Schindler.mp4'));
 

select*from movietbl;

show variables like 'max_allowed_packet';
show variables like 'secure_file_priv';




select*from movietbl;
drop table movietbl;




