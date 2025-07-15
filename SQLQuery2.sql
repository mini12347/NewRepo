INSERT INTO Department values (1,'IT','Alice Johnson'),(2,'HR','Bob Smith'),(3,'Marketing','Clara Bennett')
INSERT INTO Employee values (101,'John Doe','Developer',60000.00,1),(102,'Jane Smith','Analyst',55000.00,2),(103,'Mike Brown','Designer', 50000.00,  3),( 104, 'Sarah Johnson',  'Data Scientist', 70000.00,  1),( 105,  'Emma Wilson', 'HR Specialist', 52000.00, 2)
INSERT INTO Project values (201,'Website Redesign','2024-01-15','2024-06-30',1),(202,'Employee Onboarding','2024-03-01','2024-09-01',2),(203,'Market Research','2024-02-01','2024-07-31',3),(204,'IT Infrastructure Setup','2024-04-01','2024-12-31',1)
INSERT INTO Employee_Project values (101,201,'Frontend Develope'),(104,201,'Backend Developer'),(102,202,'Trainer'),(105,202,'Coordinator'),(103,203,'Research Lead'),(101,204,'Network Specialist')
UPDATE Employee_Project SET role='Full Stack Developer' WHERE employee_Num_E = 101
SELECT * FROM Employee_Project
DELETE FROM Employee_Project WHERE employee_Num_E = 103
DELETE FROM Employee WHERE Num_E = 103
SELECT * FROM Employee