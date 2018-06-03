-- Q4. Stafford 에 위치한 모든 프로젝트에 대해서, 프로젝트 번호, 담당부서 번호, 부서 관리자의 성, 주소, 생년월일을 검색하라 

SELECT Pnumber, Dnum, Fname, Address, Bdate
FROM (
			SELECT Pnumber, Dnum, Mgr_ssn
            FROM(
						SELECT Pnumber, Dnum, Plocation
                        FROM project
                        WHERE Plocation = 'Stafford'
						) PRJ JOIN department DEPT ON PRJ.Dnum = DEPT.Dnumber
            ) MGR JOIN employee EMP ON MGR.Mgr_ssn = EMP.Ssn;
            