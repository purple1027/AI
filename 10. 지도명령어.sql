-- 467p 삭제가 발생했을 때a

delimiter //
create trigger bud -- 언제 누구에게 
  after delete
  on usertbl
  for each row
begin
insert into backup_userTbl 
values(
             OLD.userID, OLD.name, OLD.birthYear, old.addr, 
             old.mobile1, old.mobile2, old.height, old.mDate,
             '삭제', curdate(), current_user() 
      );

end //
delimiter ;

select * from usertbl;

delete from usertbl where userID='YJS' ;

select * from backup_userTbl ;

-- 469p
-- 삽입 후에 경고 오류 발생시키고 메세지 띄우기


delimiter //
create trigger uti -- 언제 누구에게 
  after insert
  on usertbl
  for each row
begin
signal sqlstate '45000' set message_text='데이터의 입력을 시도했습니다. 귀하의 정보가 서버에 기록되었습니다.';
end //
delimiter ;

select * from usertbl;
insert into usertbl values('ABC', '에비씨',1977,'서울', '011','11111', 181, '2019-12-25', '잠재고객');

select * from usertbl;


drop trigger uti;

-- before 트리거

-- old 변겅되기 전 자료, new 변경되고 난 후의 자료
-- 요구사항 입력할 때 생일 잘못 입력되지 않도록 1900이전 입력이면 0 입력 또는 올해 연도보다 이후의 연도 입력되었어 0입력.
drop trigger ubi;

delimiter //

create trigger ubi
before insert
on usertbl
for each row
begin

if new.birthyear <1900 then
 set new.birthyear=0;
 elseif new.birthyear > year(curdate()) then 
 set new.birthyear = year(curdate());
 
 end if;
end//


delimiter ;

insert into usertbl values('DDD', '디디디',1877,'서울', '011','11111', 181, '2019-12-25', '잠재고객');
insert into usertbl values('EEE', '이이이',2877,'서울', '011','11111', 181, '2019-12-25', '잠재고객');

select * from usertbl ;

-- 주소가 평양 입력이 되면 외국인
drop trigger ubi2
 
delimiter //

create trigger ubi2
before insert
on usertbl
for each row
begin

if new.addr='평양' then
 set new.addr='외국';
 elseif new.mobile1 > '999' then 
 set new.mobile1 = '010';
 
 end if;
end//


delimiter ;

insert into usertbl values('FFF', '에프에프에프',1877,'평양', '011','11111', 181, '2019-12-25', '잠재고객');
insert into usertbl values('GGG', '지지지',2877,'서울', '999','11111', 181, '2019-12-25', '잠재고객');

select * from usertbl ;


-- 생성한 트리거들을 확인하기

show triggers from sqldb

-- 다중트리거

-- 구매 1 물품테이블 -1 배송테이블 +1

drop database if exists triggerdb;
create database if not exists triggerdb;
use triggerdb;

-- 구매테이블
create table orderTbl
 (orderNo int auto_increment primary key, 
 userid varchar(5),
 prodName varchar(5),
 orderamount int);
 
 -- 물품테이블
 create table prodTbl
  (prodname varchar(5),
   account int);
   
-- 배송테이블

create table deliverTbl
 (deleverNo int auto_increment primary key,
 prodName varchar(5),
 account int);
 
 -- 물품테이블에 물건을 삽입하기
 
 insert into prodTbl values ('사과',100);
 insert into prodTbl values ('배',100);
 insert into prodTbl values ('귤',100);
 
 
 select * from prodTbl;

-- 트리거

delimiter //

create trigger orderTg

 after insert
 on orderTbl
 for each row
 
begin
update prodTbl set account = account =new.orderamount where prodName=new.prodName;
 
end //

delimiter ;

-- 요구사항 물품테이블을 업데이트 된 후에 베송테이블에 삽입하기alter

delimiter //
create trigger prodTg
after update
on prodtbl
for each row

begin 
declare orderAmount int; -- 변수선언
set orderAmount =OLD.account=new.account; -- 100-95-5
insert into deliverTbl values(null, new.prodName, orderAmount);



end//

delimiter ;

-- 

select *from ordertbl;
desc ordertbl;
insert into ordertbl values(null, 'BBK', '사과', 5);

select * from ordertbl;
select * from prodtbl;
select * from delivertbl;


insert into ordertbl values(null, 'KSB', '배', 10);

select * from ordertbl;
select * from prodtbl;
select * from delivertbl;



-- 569 14장 지리정보시스템


DROP DATABASE IF EXISTS GisDB;

CREATE DATABASE GisDB;

USE GisDB;

CREATE TABLE StreamTbl (
   MapNumber CHAR(10),  -- 지도일련번호
   StreamName CHAR(20),  -- 하천이름
   Stream GEOMETRY ); -- 공간데이터(하천개체)


INSERT INTO StreamTbl VALUES ( '330000001' ,  '한류천', 
   ST_GeomFromText('LINESTRING (-10 30, -50 70, 50 70)'));
INSERT INTO StreamTbl VALUES ( '330000001' ,  '안양천', 
   ST_GeomFromText('LINESTRING (-50 -70, 30 -10, 70 -10)'));
INSERT INTO StreamTbl VALUES ('330000002' ,  '일산천', 
   ST_GeomFromText('LINESTRING (-70 50, -30 -30, 30 -60)'));


select * from StreamTbl;

CREATE TABLE BuildingTbl (
   MapNumber CHAR(10),  -- 지도일련번호
   BuildingName CHAR(20),  -- 건물이름
   Building GEOMETRY ); -- 공간데이터(건물개체)

INSERT INTO BuildingTbl VALUES ('330000005' ,  '하나은행', 
   ST_GeomFromText('POLYGON ((-10 50, 10 30, -10 10, -30 30, -10 50))'));
INSERT INTO BuildingTbl VALUES ( '330000001' ,  '우리빌딩', 
   ST_GeomFromText('POLYGON ((-50 -70, -40 -70, -40 -80, -50 -80, -50 -70))'));
INSERT INTO BuildingTbl VALUES ( '330000002' ,  '디티오피스텔', 
   ST_GeomFromText('POLYGON ((40 0, 60 0, 60 -20, 40 -20, 40 0))'));
  
  
  SELECT * FROM BuildingTbl
  union all 
  select * from StreamTbl;
   
  SELECT * FROM StreamTbl WHERE ST_Length(Stream) > 140 ; -- st_length 길이구하는 함수
   
   
   SELECT BuildingName, ST_AREA(Building) FROM BuildingTbl 
   WHERE ST_AREA(Building) < 500;
   
   
-- 583


SELECT StreamName, BuildingName, Building, Stream
   FROM BuildingTbl , StreamTbl 
   WHERE ST_Intersects(Building, Stream) = 1   AND StreamName = '안양천';

SELECT ST_Buffer(Stream,5) FROM StreamTbl;


-- 

DROP DATABASE IF EXISTS KingHotDB;
CREATE DATABASE KingHotDB;


USE KingHotDB;
-- [왕매워 짬뽕] 체인점 테이블 (총 매출액 포함)
CREATE TABLE Restaurant
(restID int auto_increment PRIMARY KEY,  -- 체이점 ID
 restName varchar(50),           -- 체인점 이름
 restAddr varchar(50),           -- 체인점 주소
 restPhone varchar(15),           -- 체인점 전화번호
 totSales  BIGINT,              -- 총 매출액         
 restLocation geometry ) ;           -- 체인점 위치



-- [왕매워 짬뽕] 1호점~9호점 입력
INSERT INTO Restaurant VALUES
 (NULL, '왕매워 짬뽕 1호점', '서울 강서구 방화동', '02-111-1111', 1000, ST_GeomFromText('POINT(-80 -30)')),
 (NULL, '왕매워 짬뽕 2호점', '서울 은평구 증산동', '02-222-2222', 2000, ST_GeomFromText('POINT(-50 70)')),
 (NULL, '왕매워 짬뽕 3호점', '서울 중랑구 면목동', '02-333-3333', 9000, ST_GeomFromText('POINT(70 50)')),
 (NULL, '왕매워 짬뽕 4호점', '서울 광진구 구의동', '02-444-4444', 250, ST_GeomFromText('POINT(80 -10)')),
 (NULL, '왕매워 짬뽕 5호점', '서울 서대문구 북가좌동', '02-555-5555', 1200, ST_GeomFromText('POINT(-10 50)')),
 (NULL, '왕매워 짬뽕 6호점', '서울 강남구 논현동', '02-666-6666', 4000, ST_GeomFromText('POINT(40 -30)')),
 (NULL, '왕매워 짬뽕 7호점', '서울 서초구 서초동', '02-777-7777', 1000, ST_GeomFromText('POINT(30 -70)')),
 (NULL, '왕매워 짬뽕 8호점', '서울 영등포구 당산동', '02-888-8888', 200, ST_GeomFromText('POINT(-40 -50)')),
 (NULL, '왕매워 짬뽕 9호점', '서울 송파구 가락동', '02-999-9999', 600, ST_GeomFromText('POINT(60 -50)'));



SELECT restName, ST_Buffer(restLocation, 3) as '체인점' FROM Restaurant;

-- 지역 관리자 테이블
CREATE TABLE Manager
 (ManagerID int auto_increment PRIMARY KEY,   -- 지역관리자 id
  ManagerName varchar(5),                 -- 지역관리자 이름
  MobilePhone varchar(15),                 -- 지역관리자 전화번호
  Email varchar(40),                      -- 지역관리자 이메일
  AreaName varchar(15),                 -- 담당지역명
  Area geometry SRID 0) ;                       -- 담당지역 폴리곤

INSERT INTO Manager VALUES
 (NULL, '존밴이', '011-123-4567', 'johnbann@kinghot.com',  '서울 동/북부지역',
   ST_GeomFromText('POLYGON((-90 0, -90 90, 90 90, 90 -90, 0 -90, 0  0, -90 0))')) ,
 (NULL, '당탕이', '019-321-7654', 'dangtang@kinghot.com', '서울 서부지역',
   ST_GeomFromText('POLYGON((-90 -90, -90 90, 0 90, 0 -90, -90 -90))'));

SELECT ManagerName, Area as '당탕이' FROM Manager WHERE ManagerName = '당탕이';
SELECT ManagerName, Area as '존밴이' FROM Manager WHERE ManagerName = '존밴이';


-- 서울시의 도로 테이블
CREATE TABLE Road
 (RoadID int auto_increment PRIMARY KEY,  -- 도로 ID
  RoadName varchar(20),           -- 도로 이름
  RoadLine geometry );              -- 도로 선

INSERT INTO Road VALUES
 (NULL, '강변북로',
   ST_GeomFromText('LINESTRING(-70 -70 , -50 -20 , 30 30,  50 70)'));

SELECT RoadName, ST_BUFFER(RoadLine,1) as '강변북로' FROM Road;



SELECT ManagerName, AreaName, ST_Area(Area) as "면적 m2" FROM Manager;

-- 각 매니저가 관리하는 체인점 정보

SELECT M.ManagerName,
       R.restName,
       R.restAddr,
       M.AreaName 
FROM Restaurant R, Manager M
WHERE ST_Contains(M.AREA, R.restLocation) = 1 
ORDER BY M.ManagerName;

-- 근거리 짬뽕 1호점 체인점 알아보기
SELECT R2.restName,
       R2.restAddr,
       R2.restPhone, 
       ST_Distance(R1.restLocation, R2.restLocation) AS "1호점에서 거리"
FROM Restaurant R1, Restaurant R2
WHERE R1.restName='왕매워 짬뽕 1호점'
ORDER BY ST_Distance(R1.restLocation, R2.restLocation) ;

SELECT Area INTO @eastNorthSeoul FROM Manager WHERE AreaName = '서울 동/북부지역';
SELECT Area INTO @westSeoul FROM Manager WHERE AreaName = '서울 서부지역';
SELECT ST_Union(@eastNorthSeoul, @westSeoul) AS  "모든 관리지역을 합친 범위" ;


-- ST_Union() 두 도형을 합한 결과 좌표 집합을 구한다.alter



SELECT  Area INTO @eastNorthSeoul FROM Manager WHERE ManagerName = '존밴이';
SELECT  Area INTO @westSeoul FROM Manager WHERE ManagerName = '당탕이';
SELECT  ST_Intersection(@eastNorthSeoul, @westSeoul) INTO @crossArea ;


-- ST_Intersection 두 도형을 교차한 결과 좌표 집합을 구한다.

select @crossArea;

SELECT DISTINCT R.restName AS "중복 관리 지점"
    FROM Restaurant R, Manager M
    WHERE ST_Contains(@crossArea, R.restLocation) = 1;
    
    
    SELECT  ST_Buffer(RoadLine, 30) INTO @roadBuffer FROM Road;
SELECT R.restName AS "강변북로 30M 이내 지점"
   FROM Restaurant R
   WHERE ST_Contains(@roadBuffer,R.restLocation) = 1;

    
   
SELECT  ST_Buffer(RoadLine, 30) INTO @roadBuffer FROM Road;
SELECT  ST_Buffer(RoadLine, 30) as '강변북로 30m' FROM Road;
SELECT  ST_Buffer(R.restLocation, 5) as '체인점' -- 지점을 약간 크게 출력
   FROM Restaurant R
   WHERE ST_Contains(@roadBuffer, R.restLocation) = 1;
SELECT RoadLine as '강변북로' FROM Road; 
    
    
    