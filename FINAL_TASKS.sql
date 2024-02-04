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


