-- Q13. 배우자가 있는 사원들의 수를 검색하라

SELECT COUNT(*) 인원
FROM employee E JOIN dependent D ON ( E.Ssn = D.Essn )
WHERE Relationship IN ('Daughter', 'Son', 'Spouse')

-- Relationship 에 대해 IS NOT NULL 이나 Relationship = 'Spause' 를 사용할 수 있었지만, 위와 같이 한 이유는
-- 첫째, 자신의 부모나 다른 형제가 Relation으로 등록 될 경우 IS NOT NULL이 작동하지 못하며,
-- 둘째, Spause 가 등록되지 않고, 자녀만 있더라도 배우자가 있다고 볼 수 있기 때문입니다.
-- 만약 이혼가정이라 자녀만 존재하며, 아내가 없는 상황이라면 Relationship = 'Spause' 를 하는 것이 맞겠습니다.