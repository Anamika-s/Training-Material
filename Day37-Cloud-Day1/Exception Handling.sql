
declare @no1 int
declare @no2 int
declare @no3 int
set @no1=10
set @no2=0
 begin try
 set @no3= @no1 / @no2
  print 'Line 1'
  print 'Line 2' 
  print 'Line 3' 
  print 'Line 4'
  end try
begin catch
   print 'Inside Catch '
   print Concat('Error Message' , ' : ' , error_message());
   print Concat('Error Severity' , ' : ' , error_severity());
   print Concat('Error State' , ' : ' , error_state());
   print Concat('Error Procedure' , ' : ' , error_procedure());
   print Concat('Error Line' , ' : ' , error_line());
   print Concat('Error NUmber' , ' : ' , error_number());
   end  catch

   --- ------------------------------------------------------


declare @age int

set @age=10
 
 begin try
 if @age < 40
  throw 50000, 'Age is less than 40', 16
  print 'Line 1'
  print 'Line 2' 
  print 'Line 3' 
  print 'Line 4'
  end try
begin catch
   print 'Inside Catch '
   print Concat('Error Message' , ' : ' , error_message());
   print Concat('Error Severity' , ' : ' , error_severity());
   print Concat('Error State' , ' : ' , error_state());
   print Concat('Error Procedure' , ' : ' , error_procedure());
   print Concat('Error Line' , ' : ' , error_line());
   print Concat('Error NUmber' , ' : ' , error_number());
   end  catch

-------------------------------------------------------

declare @age int

set @age=10
 begin try
  if @age < 40
  raiserror('Age is less than 40', 16,3)
  print 'Line 1'
  print 'Line 2' 
  print 'Line 3' 
  print 'Line 4'
  end try
begin catch
   print 'Inside Catch '
   print Concat('Error Message' , ' : ' , error_message());
   print Concat('Error Severity' , ' : ' , error_severity());
   print Concat('Error State' , ' : ' , error_state());
   print Concat('Error Procedure' , ' : ' , error_procedure());
   print Concat('Error Line' , ' : ' , error_line());
   print Concat('Error NUmber' , ' : ' , error_number());
   end  catch
