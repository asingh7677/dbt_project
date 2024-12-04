with employees as (
    select 
        EmployeeID, FirstName, LastName, JobTitle, BranchID, Salary, HireDate, Email,
        CASE
        WHEN ManagerID IS NULL THEN 0  -- Replace NULL with a default value
        ELSE ManagerID
    END AS ManagerID
    from 
        {{ source("dbo","employees") }}
)

select * from employees