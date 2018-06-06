 -- Q12. 5번 부서에 근무하는 사원 중에서 ProductX 프로젝트에 주당 10시간 이상 일하는 모든 사원의 성, 이름을 검색하라.

SELECT DISTINCT E.Fname, E.Lname
FROM employee E JOIN works_on W ON (E.Ssn = W.Essn) JOIN project P ON ( W.Pno = P.Pnumber)
WHERE E.Dno = 5 AND P.Pname = 'ProductX' AND W.Hours >= 10;