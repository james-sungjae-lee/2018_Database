-- Q10. Project X 에 참여하는 사원들의 급여를 10%올렸을 경우의 급여를 구하여라.

UPDATE employee E JOIN project P ON E.Dno = P.Dnum
SET E.Salary = E.Salary*1.1
WHERE P.Pname = 'ProductX';

SELECT Salary
FROM employee E JOIN project P ON E.Dno = P.Dnum
WHERE P.Pname = 'ProductX'
