--���ϸ� 01 ����Ʈ

select*from emp;
select*from student;
select*from dept;
select dname from dept;

select empno, ename, sal, job from emp;

--���������
select empno, ename, sal*12, job from emp;
select empno, ename, sal*12*0.33, job from emp;
select empno as �����ȣ, ename as �����, sal*12*0.33 as ��������, job as ���� from emp;

--�Ʒ� ������ as ���� �����ϴ�!!. ������ ������� ���� �� �ִ�!
select empno �����ȣ, ename �����, sal*12*0.33 ��������, job ���� from emp;

select*from salgrade;

select grade, losal, LOSAL+1000, hisal, HISAL+1500 from salgrade;

--��Ī (��Ī) �ٿ��ֱ�

select grade ���, losal �����ݾ�, losal+1000 �λ������ݾ�, hisal �ִ�ݾ�, hisal+1500 �λ��ִ�ݾ� from salgrade;

--NULL�̶�? 0�� �ƴϴ�! �� ���� ���� �ƴϴ�! ��Ȯ�� �˼����� �ڸ��� �ǹ��̴�. � ������ ���� �𸣴� ��. ���� ������ �� �� ����!

select * from emp;

--comm ���ʽ��� +100������ ��������

select comm, comm+100 from emp; --null �÷��� +100 ������ ���� �ʰ� null�� ��Ÿ�� ����!

select comm, nvl(comm,0)+100 ���ʽ� from emp;

select ename || '�� ������' || job ||'�Դϴ�' ���� from emp;


select * from emp;

--�μ����� ������? (�ߺ������ϱ�)

select distinct deptno from emp;

select * from emp;

--�μ����� 20�� ����� ����


select * from emp where deptno=20;

select * from emp where job='���';

select * from emp where job='���' or job='����';

--�޿� 400 �̻�
select empno �����ȣ, ename �̸�, sal �޿� from emp where sal>='400' ;

select empno �����ȣ, ename �̸�, job ����, sal �޿�  from emp where sal>='400' and job='����';

-- �Ի���

select * from emp where hiredate<'2005-01-01' ;

select * from emp where hiredate>'2005-01-01' ;


select * from emp where '2006-01-01'<=hiredate and hiredate<='2007-12-31';

select * from emp where ename like '��%' or ename like '��%' ;

select * from emp where ename not like '��%';


select * from emp where job='���' or job='����' or job='����' ;
select * from emp where job in ('���','����','����');


select * from emp where sal between 300 and 600;

select * from emp where hiredate between '2006.01.01' and '2007.12.31';

--MGR �������� 1010~1020����


select * from emp where mgr between 1010 and 1020;


select * from emp where comm is null;

--�̸� ������������ ����ϱ�

select * from emp order by ename asc;

--�޿� ������������ ����ϱ�

select * from emp order by sal desc;

--�μ���ȣ ������������ ����ϱ�

select * from emp order by deptno asc;

select * from emp order by job desc;

select * from emp order by deptno, sal desc;

select*from emp where job in('����','����') order by job asc;



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


-- �޿��� 300 ������ ����� �����ȣ, ����̸�, �޿��� ����ϱ�

select empno, ename, sal from emp where sal<=300;

-- �̸��� '����ȣ'�� ����� �����ȣ, �����, �޿��� ����ϱ�

select empno, ename, sal from emp where ename ='����ȣ';

-- �޿��� 250�̰ų� 300�̰ų� 500�� ������� �����ȣ�� ������ �޿��� ����ϱ�

select empno, ename, sal from emp where sal in(250, 300, 500);

-- �޿��� 250��, 300�� 500�� �ƴ� ����� ����ϱ�


select empno, ename, sal from emp where not sal in(250, 300, 500);

-- �̸��� '��'���� �����ϴ� ����� �̸� �߿� '��'�� �����ϴ� ����� �����ȣ�� ����̸� ����ϱ�

select empno, ename from emp where ename like '��%' or ename like '%��%';

-- �����(mgr)�� ���� ����� ����ϱ�

select * from emp where mgr is null;


-- �μ���ȣ�� ���� ������� ����ϵ� ���� �μ� ���� ����� ����� ��� �Ի��� �� ���� ������ ������� ����ϱ�

select*from emp order by deptno asc, hiredate asc;


