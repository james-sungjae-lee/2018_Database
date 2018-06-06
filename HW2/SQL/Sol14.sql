-- Q14. 각 부서에 대해 부서의 위치와 다른 곳에서 진행되는 프로젝트의 이름을, 부서 이름과 함께 중복된 결과가 없도록 출력하라

SELECT DISTINCT P.Pname, D.Dname
FROM (project P JOIN department D ON P.Dnum = D.Dnumber)
WHERE P.Pname NOT IN ( SELECT DISTINCT P.Pname
											  FROM project P JOIN dept_locations DL ON (DL.Dnumber = P.Dnum) 
                                              JOIN department D ON (P.Dnum = D.Dnumber)
											  WHERE P.Plocation = DL.Dlocation )