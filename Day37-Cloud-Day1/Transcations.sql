use coursedb
select * From emp
insert into emp(name,dept) values('ajay','hr')
update emp set dept='accts' where id > 5
delete emp where id = 2

select @@trancount


set implicit_transactions on

insert into emp(name,dept) values('ajay','hr')
update emp set dept='accts' where id > 5
delete emp where id = 2

print @@trancount
commit 
print @@trancount



begin transaction

insert into emp(name,dept) values('ajay','hr')
update emp set dept='accts' where id > 5
delete emp where id = 2

print @@trancount
declare @choice int
set @choice=0
 if @choice=1
	commit 
 else 
	rollback
print @@trancount


begin transaction
insert into emp(name,dept) values('ajay','hr')
 save transaction oo
update emp set dept='aa' where id > 5
delete emp where id = 2

rollback transaction oo
print @@trancount
commit 
print @@trancount


select * from emp

