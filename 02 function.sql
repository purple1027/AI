select 24*60 as 계산 from dual;
select*from dual; -- dual은 오라클에서 제고하는 테이블. 용도는 계산용이다.

select sign(10) from dual;
select round(3.456,2) from dual;
select trunc(5354.4567,2)from dual;
select mod(25,4)from dual;

select*from emp;

select length ('oracle'), length('오라클') from dual;
select lengthb ('oracle'), lengthb('오라클') from dual;

select substr('Welcome to Oracle',4,3) from dual;
select substr('Welcome to Oracle',9,2) from dual;


--instr (대상, 찾는 값) 대상에서 찾는 문자의 위치를 숫자로 반환함.
select instr('Welcome to Oracle','e') from dual; --제일 앞에 e부터 찾는 것
select instr('Welcome to Oracle','e',3) from dual; -- instr(대상, 찾는문자, 시작위치) 두 번째 위치한 e부터 찾는 것

select instr('Welcome to Oracle','e',3,2) from dual; -- instr(대상, 찾는문자, 시작위치, 몇 번째 발견)  시작위치부터 e를 찾는데 2번째 발견한 것. 17번째 있다

--LPAD left padding
--RPAD right padding

select lpad('oracle',20,'#')from dual;

select rpad('oracle',20,'#')from dual;

select*from emp;
select lpad(job,10,'_')from emp;


-- 3 형변환 함수
--to_char() to_date() to_number()

select sysdate from dual;
select sysdate, to_char(sysdate,'YYYY-MM-DD am hh:mi:ss') from dual;
select*from emp;

select hiredate,to_char(hiredate,'yyyy-mm-dd dy') from emp;

select to_char(12345678,'999,999,999')from dual;
select to_char(12345678,'999,999')from dual;

select to_char(12345678,'L999,999,999')from dual;

-- to_date('문자','형식') 문자가 형식을 바뀌어서 날짜형이 된다.
select*from emp;

-- 에러발생! select*from emp where hiredate=20070402;

 select*from emp where hiredate=to_date(20070402,'yyyymmdd');

 select*from emp where hiredate=to_date('20070402','yyyymmdd');

--에러발생! select sysdate-'1987/10/27'from dual;
select trunc (sysdate-to_date(20231027,'yyyymmdd'),0)from dual;


select*from emp;

select to_number('20,000','99,999')- to_number('10,000','99,999')from dual;

--날짜함수

select sysdate+ 2 from dual;

select sysdate-1 어제, sysdate 오늘, sysdate+1 내일 from dual;

select to_char(sysdate-1,'yyyy-mm-dd day') 어제, sysdate 오늘, sysdate+1 내일 from dual;

select months_between(sysdate, '2023/12/04')from dual;
select add_months('2023/10/01',10)from dual;
select round(to_date('20/07/01', 'yy/mm/dd'), 'year')from dual;

select hiredate, trunc(hiredate,'month') from emp;
select*from emp;

select ename 사원명,sysdate 현재일, hiredate 입사일, trunc(months_between(sysdate, hiredate),0) 근무달수 from emp;

select to_char( next_day(sysdate,'수'),'yyyy/mm/dd') from dual;
select last_day('24/01/01')from dual;
select*from emp;

select empno 사원번호, last_day(sysdate)급여일 from emp;

select * from emp;

select comm, nvl(comm,0) from emp;

select*from emp;

commit:
