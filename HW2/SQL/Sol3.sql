-- Q3. Research 부서에 근무하는 모든 사원의 성과 이름, 주소를 검색하라

SELECT Fname, Minit, Lname, Address
FROM employee EMP JOIN department DEP ON EMP.Dno = DEP.Dnumber
WHERE DEP.Dname = 'Research';