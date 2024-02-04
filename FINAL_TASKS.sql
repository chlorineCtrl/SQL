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