-- Q6. 'Franklin Wong' 이 직접 관리하는 사원의 성과 이름을 검색하라.

SELECT EMP.Fname, EMP.Lname
FROM employee SUP JOIN employee EMP ON ( EMP.super_ssn = SUP.Ssn )
WHERE SUP.Fname = 'Franklin' AND SUP.Lname = 'Wong'; 