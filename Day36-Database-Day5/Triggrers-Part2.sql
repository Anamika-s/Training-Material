-- DDL TRiggers

create trigger T2 
on database
for alter_table, drop_table
 as
 begin
 print 'TAble cant be modified'
  rollback
  end

  alter table Emp add dept varchar(20)

  disable trigger T1 on Emp

  enable trigger all