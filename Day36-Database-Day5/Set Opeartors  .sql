drop table Cricket
drop table Hockey
create table Cricket(name varchar(20), runs int)
create table Hockey(name varchar(20), scores int)

insert into Cricket values('Karan', 29),
('Pawan', 20),
('Ajeet', 80),
('Ajay', 29),
('Gaurav', 89),
('Ratan', 29),
('Kiran', 29)


insert into Hockey values('Karan', 29),
('Pawan', 20),
('Lalit', 80),
('Parul', 29),
('Gaurav', 89),
('Ratan', 30),
('Kiran', 29)

-- Set Opeartors
--Select col1 , col2 from table1
--Set ope
--Select col1 , col2 from table2

-- when you want players who plays either game, but it  removes
-- dupliacte records
select name, runs from cricket
UNION
select name, scores from hockey

-- when you want players who plays either game, but it will 
-- dupliacte records
select name, runs from cricket
UNION All
select name, scores from hockey

-- when you want players who plays both games
select name, runs from cricket
Intersect
select name, scores from hockey

-- when you want players who plays  only 1 game

select name, runs from cricket
Intersect
select name, scores from hockey

select * from cricket
select * from hockey
select name, runs from cricket
Except
select name, scores from hockey

select name, scores As "Scores And Runs" from Hockey
Except
select name, runs from cricket




update cricket set runs=30 where name='Ratan'

