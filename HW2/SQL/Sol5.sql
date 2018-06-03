-- Q5. 각 사원에 대해 사원의 이름과 성, 그리고 직속 상사의 이름과 성을 검색하라.

SELECT EMP.Fname 사원성, EMP.Lname 사원이름, SUP.Fname 직속상사성, SUP.Lname 직속상사이름 
FROM employee EMP JOIN employee SUP ON EMP.Super_ssn = SUP.Ssn;
