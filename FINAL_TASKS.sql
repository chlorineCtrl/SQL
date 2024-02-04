-- task1
select EName
from employee
where EID not in (
		select EID 
        from assignment
        where extract(year from AssignmentDate) = 2023
);
-- task2
