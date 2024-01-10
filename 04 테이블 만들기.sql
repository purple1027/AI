--���̺� �����

--create table ���̺�� (�÷��� �ڷ�� ��������):

create table dept_mission (
    dno number(2),
    dname varchar2(14),  --������ ����
    loc varchar2(13));
    
    
create table emp_mission(
   eno number(4),
   ename varchar2(10),
   dno number(2));
   
create table emp01(
  empno number(4),
  ename varchar2(14),
  sal  number(7,3));
  
  
  --���� �����ϱ�
  --������ �ٲٸ� ���̺� �ڷᰡ �ڷᰡ �����ȴ�
  
  alter table emp01
    add(birth date);
    
  alter table emp_mission
  add (deptno number(4), address varchar2(20) );
 
 
  alter table emp01
    drop column birth; --drop column �÷���
  
  alter table emp_mission  
    drop column deptno;

  alter table emp_mission  
    drop column addr;
   
 -- ���̺��� ��������
 
  desc emp01;
  desc emp_mission;
  desc emp_mi;


  alter table emp01
   modify(ename varchar2(14));
   
   
 -- ���̺���� �̸� �����ϱ�
 
 rename emp_mission to emp_mi;
 
 --���̺� �����ϱ�
 
 drop table emp_mi;
 
 --emp�� �˻���� (select)�� ���� ���� ���̺�� �����
 
 create table emp_copy
 as
 select*from emp;
 
 desc emp;
 desc emp_copy;
 
 select*from emp_copy;
 
 desc emp;
 desc emp_copy;
 
 --emp_copy ���̺��� comm �÷� �����ϱ�
 alter table emp_copy
  drop column comn;
 
 --emp_copy ���̺��� hiredate �÷� �̸��� hire�� �ٲٱ�
 
 alter table emp_copy
  rename column hiredate to hire;


select* from emp_copy;  

--��� �����͸� �����ϱ�
delete from emp_copy;
truncate table emp_copy;

--��ųʸ�: �����ͺ��̽� �������� �������ִ� ���̺�
--��ųʸ��� ������ �ȵǰ� �б⸸ �����ϴ�.
--�뵵: �ش� �����ͺ��̽��� �Ǹ��� �� �ַ� �����


select * from user_tables; --�����ͺ��̽� �ȿ� ���̺��� ��ϵ��� ��� ����.
select * from user_views;

select * from all_tables;
select * from all_tables where table_name='EMP'; 

select*from dba_tables; --�����ͺ��̽� �����ڴ� ����Ŭ���� �̸��� �����Ǿ� ���� sys
                        -- system ���� ��ġ �����ϴ� ��� - ����Ʈ����  
                        -- �ʿ信 ���� ����ڸ� ����� �� �� �ִ�.
                        

--dml�� insert, update, delete�� ���ڵ� ����, ����, �����ϱ�.




create table emp01(
  empno number(4),
  ename varchar2(14),
  sal  number(7,3));

select * from emp01;

insert into emp01 values(1000, 'ȫ�浿', 123.5);
insert into emp01(ename, empno, sal) values('�̼���',1001,256.7); 

--�࿡ Ư�� ���� �ִ´�.
--��ȣ, �̸��� �ֱ�

insert into emp01 (empno, ename)values(1002,'�����');
insert into emp01(sal) values(100);

--�̸��� �������� �ֱ�

insert into emp01(empno,ename, sal) values(1004,' ',50);

desc emp01;

--�Ի��� �÷� �߰��ϱ�
alter table emp01  
  add hire date;

-- �ڼ���, 1010, 80, 23/01/09
insert into emp01(ename, empno, sal, hire) values('�ڼ���',1010,80,'2023-01-09');

insert into emp01(empno,ename, sal, hire) values(1011,'�ְ��',0,'2023-01-08');

--�����ϱ�
--update ���̺�� set �÷��� = ���ο� �� where ������

select*from emp01;

update emp01 set sal =200 where ename ='ȫ�浿';

update emp01 set ename='������' where empno =1004;

update emp01 set sal= sal+100, hire='2022-10-25' where empno=1010;

update emp01 set sal= sal+200;



--
--delete from ���̺�� where ������

delete from emp01 where sal>=500;

--Ʈ������

delete from emp01;
rollback;
select * from emp01;
commit;


update emp01 set sal=nvl(sal+200,200);

-- ������� �Ի����� ���÷� �ٲٱ�!
select * from emp01;
update emp01 set hire=sysdate;
rollback;
commit;

--��������

select*from dept;

--insert into dept values(10,'test','test');10�� �����̸Ӹ� Ű ������ ���� �����Ͽ��� �ϹǷ� ������ ��
--insert into dept values(null,'test,'test'); null�� �����̸Ӹ� Ű ������ ���� null�� �ƴϾ�� �ϹǷ� ������ ��

create table pTab(
  code number(4) primary key,
  name varchar2(14)
);

select * from user_constraints where table_name='PTAB';

--name ���������� not null�� �߰��ϱ�!

 alter table pTab
   modify name varchar2(14) not null;

--������ �����ϱ�

insert into ptab(code, name)values(1010,'a');
--insert into ptab(code, name)values(1010,'b');   
--insert into ptab(code, name)values(1011,'null');  
 
 
 --id �÷� �߰��ϱ� varchar2(10)
 alter table ptab 
   add id varchar2(10);

desc ptab; 

--id �÷��� ���������� unique�� �����

alter table ptab
   modify id varchar2(10) unique;
   
select *from user_constraints where table_name='PTAB';

insert into ptab(code,name,id) values(1012,'c','a100');
--insert into ptab(code,name,id) values(1012,'d','a100'); a ����Ű ����



