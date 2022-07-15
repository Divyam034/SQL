use testDB;
desc EmployeeInfo;
desc EmployeePosition;
select * from EmployeeInfo;

# Q1. Write a query to fetch the EmpFname from the EmployeeInfo table in upper case
# and use the ALIAS name as EmpName.

select upper(EmpFname) as EmpName
from EmployeeInfo;

# Q2. Write a query to fetch the number of employees working in the department ‘HR’.

select count(Department) as "No of Employee(in HR)"
from employeeinfo
where Department="HR";

# Q3. Write a query to get the current date.

select sysdate();

# Q4. Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.

select left(EmpLname,4) from EmployeeInfo;
select substring(EmpLname,1,4) from EmployeeInfo;


