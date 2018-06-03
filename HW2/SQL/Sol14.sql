-- Q14. 각 부서에 대해 부서의 위치와 다른 곳에서 진행되는 프로젝트의 이름을, 부서 이름과 함께 중복된 결과가 없도록 출력하라

SELECT DISTINCT Pname, Dname 
FROM dept_locations DL JOIN department D ON ( DL.Dnumber = D.Dnumber ) JOIN project P ON D.Dnumber = P.Dnum
WHERE DL.Dlocation != P.Plocation;