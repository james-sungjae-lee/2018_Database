-- Q10. Project X 에 참여하는 사원들의 급여를 10%올렸을 경우의 급여를 구하여라.

SELECT Salary * 1.1
FROM employee E JOIN project P ON E.Dno = P.Dnum
WHERE P.Pname = 'ProductX'