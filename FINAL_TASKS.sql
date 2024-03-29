-- 2a(i)
select EName
from employee
where EID not in (
		select EID 
        from assignment
        where extract(year from AssignmentDate) = 2023
);
-- 2a(ii)

SELECT P.PID, P.PName, COUNT(A.EID) AS TotalAssignedEmployees
FROM Project P
JOIN Assignment A ON P.PID = A.PID
GROUP BY P.PID, P.PName
ORDER BY TotalAssignedEmployees DESC;

-- 2a(iii)

SELECT EName
FROM Employee
WHERE EID IN (
    SELECT EID
    FROM Assignment
    GROUP BY EID
    HAVING AVG(HoursWorked) > (SELECT AVG(HoursWorked) FROM Assignment)
);
-- 2a(iv)

select E.EName,E.Department, coalesce(count(A.PID),0) as NumProjectAssigned
from employee E
left join assignment A on E.EID = A.EID and year(A.AssignmentDate) = 2023
group by E.EID, E.EName, E.Department;

-- 2a(v)

select PName
from project
order by datediff(EndDate,StartDate) desc
limit 1;

-- 2b
CREATE VIEW ProjectView AS
SELECT PID, DATEDIFF(EndDate, StartDate) AS ProjectLength, Budget
FROM Project
ORDER BY Budget DESC;

-- c) Assume that the current datatype of EID is integer. The database administrator intends to change the datatype to varchar2 (12). Present the sequential operations required to execute this modification (You are not required to provide the exact queries).

--     Backup Data: Ensure a backup of the Employee table data.

--     Update Foreign Keys: If EID is referenced in other tables as a foreign key, update those foreign keys to match the new datatype.

--     Update Primary Key: If EID is a primary key, update any foreign keys in other tables that reference it.

--     Update Data Type: Alter the Employee table to change the datatype of EID to varchar2(12).

--     Update Indexes and Constraints: Rebuild any indexes or constraints that involve the EID column.

--     Update Referencing Columns: If there are other columns in the database that reference EID, update their datatype.

--     Test and Validate: Execute test cases to ensure data integrity and correctness after the datatype change.

--     Update Application Code: If any application code relies on the datatype of EID, update it accordingly.

--     Notify Users: Inform users about the upcoming change and any expected downtime.

--     Execute: Execute the planned changes during a maintenance window to minimize impact on users.