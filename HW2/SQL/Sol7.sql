-- Q7. 사원의 ssn 과 부서의 Dname에 대한 모든 조합을 생성하라

SELECT Ssn, Dname
FROM employee CROSS JOIN department
