-- Q13. 배우자가 있는 사원들의 수를 검색하라

SELECT COUNT(*) 인원
FROM employee E JOIN dependent D ON ( E.Ssn = D.Essn )
WHERE Relationship = 'Spouse';