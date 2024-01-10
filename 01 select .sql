--파일명 01 셀렉트

select*from emp;
select*from student;
select*from dept;
select dname from dept;

select empno, ename, sal, job from emp;

--산술연산자
select empno, ename, sal*12, job from emp;
select empno, ename, sal*12*0.33, job from emp;
select empno as 사원번호, ename as 사원명, sal*12*0.33 as 연간세금, job as 직급 from emp;

--아래 구문에 as 생략 가능하다!!. 동일한 결과값을 얻을 수 있다!
select empno 사원번호, ename 사원명, sal*12*0.33 연간세금, job 직급 from emp;

select*from salgrade;

select grade, losal, LOSAL+1000, hisal, HISAL+1500 from salgrade;

--별칭 (애칭) 붙여주기

select grade 등급, losal 최저금액, losal+1000 인상최저금액, hisal 최대금액, hisal+1500 인상최대금액 from salgrade;

--NULL이란? 0이 아니다! 빈 공간 또한 아니다! 미확정 알수없는 자리의 의미이다. 어떤 값인지 아직 모르는 것. 따라서 연산을 할 수 없다!

select * from emp;

--comm 보너스를 +100만원씩 지급하자

select comm, comm+100 from emp; --null 컬럼은 +100 연산이 되지 않고 null로 나타나 진다!

select comm, nvl(comm,0)+100 보너스 from emp;

select ename || '의 직급은' || job ||'입니다' 직급 from emp;


select * from emp;

--부서명의 종류는? (중복제거하기)

select distinct deptno from emp;

select * from emp;

--부서명이 20인 사원들 보기


select * from emp where deptno=20;

select * from emp where job='사원';

select * from emp where job='사원' or job='과장';

--급여 400 이상
select empno 사원번호, ename 이름, sal 급여 from emp where sal>='400' ;

select empno 사원번호, ename 이름, job 직급, sal 급여  from emp where sal>='400' and job='부장';

-- 입사일

select * from emp where hiredate<'2005-01-01' ;

select * from emp where hiredate>'2005-01-01' ;


select * from emp where '2006-01-01'<=hiredate and hiredate<='2007-12-31';

select * from emp where ename like '이%' or ename like '오%' ;

select * from emp where ename not like '이%';


select * from emp where job='사원' or job='과장' or job='부장' ;
select * from emp where job in ('사원','과장','부장');


select * from emp where sal between 300 and 600;

select * from emp where hiredate between '2006.01.01' and '2007.12.31';

--MGR 멘토사번이 1010~1020사이


select * from emp where mgr between 1010 and 1020;


select * from emp where comm is null;

--이름 오름차순으로 출력하기

select * from emp order by ename asc;

--급여 내림차순으로 출력하기

select * from emp order by sal desc;

--부서번호 오름차순으로 출력하기

select * from emp order by deptno asc;

select * from emp order by job desc;

select * from emp order by deptno, sal desc;

select*from emp where job in('과장','부장') order by job asc;



select *from single_star;
select*from group_star;

select * from group_star
minus
select * from single_star;

select * from group_star
intersect
select * from single_star;

select * from group_star
union all
select * from single_star;

select * from emp;


-- 급여가 300 이하인 사원의 사원번호, 사원이름, 급여를 출력하기

select empno, ename, sal from emp where sal<=300;

-- 이름이 '오지호'인 사원의 사원번호, 사원명, 급여을 출력하기

select empno, ename, sal from emp where ename ='오지호';

-- 급여가 250이거나 300이거나 500인 사원들의 사원번호와 사원명과 급여을 출력하기

select empno, ename, sal from emp where sal in(250, 300, 500);

-- 급여가 250도, 300도 500도 아닌 사원들 출력하기


select empno, ename, sal from emp where not sal in(250, 300, 500);

-- 이름이 '김'으로 시작하는 사람과 이름 중에 '기'를 포함하는 사원의 사원번호와 사원이름 출력하기

select empno, ename from emp where ename like '김%' or ename like '%기%';

-- 상급자(mgr)가 없는 사원을 출력하기

select * from emp where mgr is null;


-- 부서번호가 빠른 사원부터 출력하되 같은 부서 내의 사원을 출력할 경우 입사한 지 가장 오래된 사원부터 출력하기

select*from emp order by deptno asc, hiredate asc;


