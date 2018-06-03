-- Q8. 일반 직원 혹은 프로젝트 관리자 중에서 성이 Smith 인 사원을 포함하는 모든 프로젝트 번호의 리스트를 검색하라

SELECT Pnumber
FROM employee E JOIN project P ON E.Dno = P.Dnum
WHERE E.Lname = 'Smith'

UNION

SELECT Pnumber
FROM employee E JOIN department D ON ( E.Ssn = D.Mgr_ssn ) JOIN project P ON D.Dnumber = P.Dnum
WHERE E.Lname = 'Smith';
