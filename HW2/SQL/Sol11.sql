-- Q11. 모든 부서의 이름, 부서에 속한 사원의 성과 이름, 각 사원이 진행하는 프로젝트의 이름을 나열
-- 부서 이름은 내림차순, 부서 내에서 프로젝트의 이름은 오름차순으로 정렬하라.

SELECT Dname, Fname, Lname, Pname
FROM department D JOIN employee E ON ( D.Dnumber = E.Dno ) JOIN project P ON ( P.Dnum = D.Dnumber )
ORDER BY Dname DESC, Pname