CREATE TABLE Department(
  Num_S int PRIMARY KEY,
  label varchar(255) NOT NULL,
  manager_Name varchar(255) NOT NULL);

CREATE TABLE Employee( 
  Num_E int PRIMARY KEY,
  name varchar(255) not NULL,
  position varchar(255) not NULL,
  salary decimal(10,2) CHECK (salary >0),
  department_Num_S int not NULL,
  FOREIGN KEY (department_Num_S) REFERENCES Department(Num_S));
CREATE TABLE Project(
  Num_P int PRIMARY KEY,
  title varchar(255) not NULL,
  start_date date not NULL,
  end_date date NOT NULL,
  department_Num_S int not NULL,
  FOREIGN KEY (department_Num_S) REFERENCES Department(Num_S));
create TABLE Employee_Project(
  employee_Num_E int not null,
  Project_Num_P int not null,
  role varchar(255) not NULL,
  FOREIGN KEY  (employee_Num_E) REFERENCES Employee(Num_E),
  FOREIGN KEY  (Project_Num_P) REFERENCES Project(Num_P),
  PRIMARY KEY(employee_Num_E,Project_Num_P ));
  
  
