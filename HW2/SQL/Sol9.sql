-- Q9. 주소가 Houston, TX 인 모든 사원의 이름과 성을 검색하라

SELECT Fname, Lname
FROM employee
WHERE address LIKE '%Houston, TX'