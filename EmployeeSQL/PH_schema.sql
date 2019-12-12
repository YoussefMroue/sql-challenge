DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE "employees" (
    "emp_no" VARCHAR PRIMARY KEY,
    "birth_date" DATE,
    "first_name" VARCHAR,
    "last_name" VARCHAR,
    "gender" VARCHAR,
    "hire_date" DATE);

CREATE TABLE "departments" (
    "dept_no" VARCHAR PRIMARY KEY,
    "dept_name" VARCHAR
);

CREATE TABLE "titles" (
    "emp_no" VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    "title" VARCHAR,
    "from_date" DATE,
    "to_date" DATE
);

CREATE TABLE "salaries" (
    "emp_no" VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    "salary" INTEGER,
    "from_date" DATE,
    "to_date" DATE
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    "emp_no" VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    "from_date" DATE,
    "to_date" DATE
);

CREATE TABLE "dept_emp" (
    "emp_no" VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    "dept_no" VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    "from_date" DATE,
    "to_date" DATE
);

