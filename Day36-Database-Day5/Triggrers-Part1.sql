-- Trigger
-- Triggers > are special stored procedures which are 
-- fired automatically when we perform
-- DML / DDL statements

-- TRiggers cud be DML TRiggers / DDL Triggers
-- DML Triggers are fired when we perform 
-- DML operation. insert , delete, update statements
-- DDL Triggers are fired when we perform DDL statemts
-- create alter drop

-- DML Triggers 
-- 1. after/for 
-- 2. instead of

-- when we delete record , shud get a message

create trigger DeleteTrigger
on student
for delete
as 
begin
print'Record has been deleted'
end

delete student where rn=3
insert into student values('lll','delhi',102)
select * from student

create trigger InsertTrigger
on student
for insert
as 
begin
print'Record has been added'
end


create trigger AllOperationsTrigger
on student
for insert, delete, update
as 
begin
rollback
print 'Someonen tried to modify table'
end

update student set name=null where rn=3

drop trigger DeleteTrigger

-- TRiggers make use of magical tables
-- inserted / deleted
-- when we insert a record , inserted table is created
-- when we delete a record , deleted table is created
-- when we update a record , inserted deleted table is created
-- inserted table contains new values
-- deleted table contains prev values





alter trigger AllOperationsTrigger
on student
for insert, delete, update
as 
begin
select * from inserted
select * from deleted
rollback
print 'Someonen tried to modify table'
end

-- create table which shud store logs
-- when we insert or delete record, shud get details

create table logData(details varchar(100), logdate datetime)

alter trigger T1 
on emp
for insert, delete
as
begin
 declare @date datetime
 declare @id int
 declare @name varchar(20)
 declare @managerid int
  if (exists(select * from inserted))
  insert into logData values('insert action was being perfomed', getdate())
 else if(exists(select * from deleted))
 print 'Deleted'
  
	begin
		insert into logData values('delete action was being perfomed', getdate())
		select * from deleted
 select @id = deleted.id, 
 @name = deleted.name, 
 @managerid= deleted.managerid  
 from deleted
 
 insert into history values(@id, @name,@managerid)
 end
 end


select * from emp

insert into EMp values(9,'Gagan',1)
select * from logDAta

select * into history from emp where 1=2

select * from emp

select * from history


delete from emp where id=5



create trigger T2
after insert
on Order
 as
 begin
 declare @pid int
 declare @qty int
  begin
 Select @pid = inserted.pid, @qty=inserted.qty from inserted
  update product set qty_stock-=@qty where pid=@pid
  end
  end

insert into order('P1', 12)