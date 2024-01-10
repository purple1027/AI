select 24*60 as ��� from dual;
select*from dual; -- dual�� ����Ŭ���� �����ϴ� ���̺�. �뵵�� �����̴�.

select sign(10) from dual;
select round(3.456,2) from dual;
select trunc(5354.4567,2)from dual;
select mod(25,4)from dual;

select*from emp;

select length ('oracle'), length('����Ŭ') from dual;
select lengthb ('oracle'), lengthb('����Ŭ') from dual;

select substr('Welcome to Oracle',4,3) from dual;
select substr('Welcome to Oracle',9,2) from dual;


--instr (���, ã�� ��) ��󿡼� ã�� ������ ��ġ�� ���ڷ� ��ȯ��.
select instr('Welcome to Oracle','e') from dual; --���� �տ� e���� ã�� ��
select instr('Welcome to Oracle','e',3) from dual; -- instr(���, ã�¹���, ������ġ) �� ��° ��ġ�� e���� ã�� ��

select instr('Welcome to Oracle','e',3,2) from dual; -- instr(���, ã�¹���, ������ġ, �� ��° �߰�)  ������ġ���� e�� ã�µ� 2��° �߰��� ��. 17��° �ִ�

--LPAD left padding
--RPAD right padding

select lpad('oracle',20,'#')from dual;

select rpad('oracle',20,'#')from dual;

select*from emp;
select lpad(job,10,'_')from emp;


-- 3 ����ȯ �Լ�
--to_char() to_date() to_number()

select sysdate from dual;
select sysdate, to_char(sysdate,'YYYY-MM-DD am hh:mi:ss') from dual;
select*from emp;

select hiredate,to_char(hiredate,'yyyy-mm-dd dy') from emp;

select to_char(12345678,'999,999,999')from dual;
select to_char(12345678,'999,999')from dual;

select to_char(12345678,'L999,999,999')from dual;

-- to_date('����','����') ���ڰ� ������ �ٲ� ��¥���� �ȴ�.
select*from emp;

-- �����߻�! select*from emp where hiredate=20070402;

 select*from emp where hiredate=to_date(20070402,'yyyymmdd');

 select*from emp where hiredate=to_date('20070402','yyyymmdd');

--�����߻�! select sysdate-'1987/10/27'from dual;
select trunc (sysdate-to_date(20231027,'yyyymmdd'),0)from dual;


select*from emp;

select to_number('20,000','99,999')- to_number('10,000','99,999')from dual;

--��¥�Լ�

select sysdate+ 2 from dual;

select sysdate-1 ����, sysdate ����, sysdate+1 ���� from dual;

select to_char(sysdate-1,'yyyy-mm-dd day') ����, sysdate ����, sysdate+1 ���� from dual;

select months_between(sysdate, '2023/12/04')from dual;
select add_months('2023/10/01',10)from dual;
select round(to_date('20/07/01', 'yy/mm/dd'), 'year')from dual;

select hiredate, trunc(hiredate,'month') from emp;
select*from emp;

select ename �����,sysdate ������, hiredate �Ի���, trunc(months_between(sysdate, hiredate),0) �ٹ��޼� from emp;

select to_char( next_day(sysdate,'��'),'yyyy/mm/dd') from dual;
select last_day('24/01/01')from dual;
select*from emp;

select empno �����ȣ, last_day(sysdate)�޿��� from emp;

select * from emp;

select comm, nvl(comm,0) from emp;

select*from emp;

--nvl(comm,0)
select*from emp where hiredate is null;

--�Ի����� null�̸� ���� ��¥�� �־��ּ���!

select hiredate, nvl(hiredate, sysdate) from emp where hiredate is null;

select*from emp;

select empno, nvl(ename, '����'), nvl(job, '���') from emp ;

select*from emp;

select ename, sal, nvl2(comm,sal*12+comm,sal*12)from emp;

insert into emp values(1019, null,'�븮',1003,sysdate,null,null,20);
insert into emp values(1020, null,'�븮',1003,sysdate,null,100,20);

select comm, sal, coalesce(comm,sal,0)from emp;

select*from emp;
select deptno, decode(deptno, 10, '�渮��',
                              20, '�λ��',
                                  '�����')
                              from 
                              emp;
                              
-- �׷��Լ�
select count(ename) from emp; --  �׷��Լ�
select ename from emp; --������ �Լ�

 
select sum(sal)from emp;     -- �׷��Լ�

-- �׷��Լ������� NULL�� ���꿡�� �����Ѵ�.
-- ���ʽ��� �޴� ����� �� ���ϼ���

select*from emp;
select count(comm) from emp;

select count(distinct job) from emp;
select*from emp;

select * from emp order by deptno ;

-- �� �μ����� ���� ���� �޿��� ����ϱ�!

select deptno, max(sal)from emp group by deptno order by deptno asc;

--job ������� (���� ����) ���� ���� �޿� ����ϱ� 

select*from emp;
select job, min(sal) from emp group by job;

select sal, avg(sal) from emp group by sal;


