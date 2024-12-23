### Project Description: Employee Salary Data Analysis

This project involves analyzing a table named **`salaries`**, which contains information about employees' salaries, job titles, and various pay components. The goal is to extract meaningful insights from the data and perform several queries to understand employee compensation, job distribution, and more. Below are the key operations and their explanations:

---

#### 1. **Display All Data from the Salaries Table**
   - **Query**: `SELECT * FROM salaries;`
   - **Purpose**: This query retrieves all columns and records from the `salaries` table. It gives an overview of the available data, which likely includes employee IDs, names, job titles, base pay, overtime pay, and other pay components.

#### 2. **Show Employee Name and Job Title**
   - **Query**: `SELECT EmployeeName, JobTitle FROM salaries;`
   - **Purpose**: This query filters out only the `EmployeeName` and `JobTitle` columns. It helps focus on the basic information about each employee, such as their name and role.

#### 3. **Count the Total Number of Employees**
   - **Queries**:
     - `SELECT * FROM salaries;`
     - `SELECT count(Id) FROM salaries;`
     - `SELECT count(*) FROM salaries;`
   - **Purpose**: These queries help determine the total number of employees in the table. The second and third queries provide the actual count of employees, with `count(*)` counting all rows and `count(Id)` specifically counting the employee IDs, which should be unique.

#### 4. **Show Unique Job Titles**
   - **Queries**:
     - `SELECT DISTINCT JobTitle FROM salaries;`
     - `SELECT count(distinct JobTitle) FROM salaries;`
   - **Purpose**: The first query retrieves all unique job titles in the `salaries` table. The second query counts how many distinct job titles exist, providing insight into job title diversity within the dataset.

#### 5. **Show Job Title and Overtime Pay for Employees with Overtime Greater Than 5000**
   - **Queries**:
     - `SELECT * FROM salaries;`
     - `SELECT JobTitle, OvertimePay FROM salaries WHERE OvertimePay > 5000;`
   - **Purpose**: The second query identifies employees who have received overtime pay greater than 5000. It then displays their `JobTitle` and `OvertimePay` to understand the correlation between job titles and significant overtime compensation.

#### 6. **Show the Average Base Pay of All Employees**
   - **Query**: `SELECT avg(BasePay) FROM salaries AS Average;`
   - **Purpose**: This query calculates the average base pay of all employees in the table. It helps assess the typical salary level across the employee base, excluding overtime or other pay components.

#### 7. **Show the Top 10 Highest-Paid Employees**
   - **Queries**:
     - `SELECT * FROM salaries;`
     - `SELECT EmployeeName, TotalPay FROM salaries ORDER BY TotalPay DESC LIMIT 10;`
   - **Purpose**: These queries retrieve the highest-paid employees based on the `TotalPay` field. The second query orders the records in descending order by `TotalPay` and limits the results to the top 10, showcasing the highest earners.

#### 8. **Show Average of Base Pay, Overtime Pay, and Other Pay**
   - **Queries**:
     - `SELECT * FROM salaries;`
     - `SELECT EmployeeName, (BasePay + OvertimePay + OtherPay) / 3 FROM salaries;`
   - **Purpose**: This query computes the average of three salary components (base pay, overtime pay, and other pay) for each employee, providing a more comprehensive view of their total compensation package.

#### 9. **Show Data for Employees with Job Titles Containing "Manager"**
   - **Queries**:
     - `SELECT * FROM salaries;`
     - `SELECT * FROM salaries WHERE JobTitle LIKE "%Manager%";`
   - **Purpose**: The second query filters employees whose job titles contain the word "Manager". This can be useful to analyze data specifically related to managerial roles.

#### 10. **Show Job Titles Without Managers**
   - **Queries**:
     - `SELECT * FROM salaries WHERE JobTitle != "%Manager%";`
     - `SELECT * FROM salaries WHERE JobTitle <> "%Manager%";`
   - **Purpose**: These queries filter out employees whose job titles do not contain the word "Manager". This helps exclude managerial roles and focus on other employee categories.

---

### Summary

The project demonstrates various SQL queries used to analyze employee salary data. These queries provide insights into employee compensation, job distribution, the relationship between overtime and job titles, and more. By filtering and aggregating data, the project helps uncover trends and details about the organization's workforce.
