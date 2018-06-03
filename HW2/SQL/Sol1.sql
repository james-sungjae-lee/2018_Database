-- Q1. 성과 이름이 John B. Smith 인 사원의 생년월일과 주소를 검색하라

SELECT Bdate , Address
FROM employee
WHERE Fname = 'John' AND Minit = 'B' AND Lname = 'Smith';
