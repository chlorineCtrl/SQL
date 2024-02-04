-- task1
select EName
from employee
where EID not in (
		select EID 
        from assignment
        where extract(year from AssignmentDate) = 2023
);
-- task2

SELECT P.PID, P.PName, COUNT(A.EID) AS TotalAssignedEmployees
FROM Project P
JOIN Assignment A ON P.PID = A.PID
GROUP BY P.PID, P.PName
ORDER BY TotalAssignedEmployees DESC;
        