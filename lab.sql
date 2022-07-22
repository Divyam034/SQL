use testdb;
select * from cricket_1;
select * from cricket_2;
# Q1 Find all the players who were present in test match 1 or test match 2
select Player_Name from cricket_1
union
select Player_Name from cricket_2;

# 02. Write a MySQL query to find the players from the test match 1 having 
# popularity higher than the average popularity.

select Player_Name, Popularity from cricket_1
where Popularity > (select avg(Popularity) from cricket_1);

# find player name and player id which are common in test match 1 and test match 2

select cricket_1.Player_Id, cricket_1.Player_Name
from cricket_1 INNER JOIN cricket_2
on cricket_1.Player_Id = cricket_2.Player_Id;

select Player_Id, Player_Name from cricket_1
where Player_Id IN (select Player_Id from cricket_2);

# select player_id, player_name, runs from cricket_1 table and display those players
# whose runs is more than average runs

select Player_Id, Player_Name, Runs from cricket_1
where Runs > (select avg(Runs) from cricket_1);

# Write a query to extract all details from cricket_1 where player name
# start with "y" and ends "v"

select * from cricket_1
where Player_Name LIKE "y%v";

# Write a query to extract all details from cricket_1 where player name
# not ends with "t"

select * from cricket_1
where Player_Name NOT like "%t";


# Create newcricket table

CREATE table newcricket as(
select cricket_1.Player_Name from cricket_1
full join cricket_2 on cricket_1.Player_Id=cricket_2.Player_Id);