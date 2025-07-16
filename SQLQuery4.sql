--1
SELECT e.name ,COUNT(ep.Project_Num_P) AS 'number of projects'
FROM Employee e
INNER JOIN Employee_Project ep ON e.Num_E=ep.employee_Num_E
GROUP BY e.name
HAVING COUNT(ep.Project_Num_P) >1
--2
SELECT d.label, d.manager_Name, STRING_AGG(p.title, ', ') AS projects
FROM department d
INNER JOIN Project p ON d.Num_S = p.department_Num_S
GROUP BY d.label, d.manager_Name
--3
SELECT e.name ,ep.role
from Employee e
inner join Employee_Project ep On ep.employee_Num_E=e.Num_E
inner join Project p on ep.Project_Num_P=p.Num_P
where p.title='Website Redesign'
--4
SELECT TOP 1  d.label ,d.manager_Name, count(e.Num_E) AS 'total number of employees'
FROM Department d
INNER JOIN Employee e ON e.department_Num_S=d.Num_S
group by  d.label,d.manager_Name
order by  count(e.Num_E) desc
--5
SELECT e.name,e.position,d.label AS 'Department name '
FROM Employee e
inner join Department d on e.department_Num_S=d.Num_S
where e.salary>60000.00
--6 
SELECT p.title AS 'Project title', count(ep.employee_Num_E) AS 'number of employees'
FROM Project p
INNER JOIN Employee_Project ep ON p.Num_P=ep.Project_Num_P
group by p.title
--7
SELECT e.name AS 'employee name',p.title 'project title',ep.role 'role of employee in project'
FROM Employee e
INNER JOIN Employee_Project ep ON ep.employee_Num_E=e.Num_E
INNER JOIN Project p ON p.Num_P=ep.Project_Num_P
--8
SELECT d.label 'department name',d.manager_Name 'department manager' , SUM(e.salary) AS 'sum of salaries in department'
FROM Department d 
INNER JOIN Employee e ON e.department_Num_S=d.Num_S
GROUP BY d.label,d.manager_Name



