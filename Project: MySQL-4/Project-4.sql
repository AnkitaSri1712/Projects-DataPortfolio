
#Task 3:
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT as Department 
 from empl_record_table;
 
#Task 4:
SELECT EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT AS DEPARTMENT, EMP_RATING
FROM empl_record_table
WHERE EMP_RATING < 2
   OR EMP_RATING > 4
   OR (EMP_RATING >= 2 AND EMP_RATING <= 4);


#Task 5:
select concat(FIRST_NAME,' ', LAST_NAME) AS Name
from empl_record_table
where DEPT='FINANCE';

#Task6:
SELECT e.EMP_ID, e.FIRST_NAME, e.LAST_NAME, e.GENDER, e.DEPT AS DEPARTMENT, COUNT(DISTINCT r.EMP_ID) AS REPORTERS_COUNT
FROM empl_record_table e
LEFT JOIN empl_record_table r ON e.EMP_ID = r.MANAGER_ID
GROUP BY e.EMP_ID, e.FIRST_NAME, e.LAST_NAME, e.GENDER, e.DEPT
HAVING COUNT(DISTINCT r.EMP_ID) > 0;


#TASK 7:
SELECT EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT
FROM empl_record_table
WHERE DEPT = 'Healthcare'
UNION
SELECT EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT
FROM empl_record_table
WHERE DEPT = 'Finance';


#TASK 8:
SELECT EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPT, EMP_RATING,
       MAX(EMP_RATING) OVER(PARTITION BY DEPT) AS MAX_EMP_RATING
FROM empl_record_table;

#TASK 9:
SELECT ROLE, MIN(SALARY) AS MIN_SALARY, MAX(SALARY) AS MAX_SALARY
FROM empl_record_table
GROUP BY ROLE;

#TASK 10:
SELECT EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EXP,
       CASE
           WHEN EXP <= 2 THEN 'JUNIOR DATA SCIENTIST'
           WHEN EXP > 2 AND EXP <= 5 THEN 'ASSOCIATE DATA SCIENTIST'
           WHEN EXP > 5 AND EXP <= 10 THEN 'SENIOR DATA SCIENTIST'
           WHEN EXP > 10 AND EXP <= 12 THEN 'LEAD DATA SCIENTIST'
           WHEN EXP > 12 AND EXP <= 16 THEN 'MANAGER'
           ELSE 'UNKNOWN'
		END AS ranks
FROM empL_record_table;

#TASK 11:
CREATE VIEW high_salaried_employees AS
SELECT *
FROM empl_record_table
WHERE SALARY > 6000;
 
 #TASK 12:
SELECT EMP_ID, FIRST_NAME, LAST_NAME, EXP
FROM empl_record_table
WHERE EXP > (SELECT 10);

#TASK 13:
DELIMITER //

CREATE PROCEDURE to_get_experienced_employees()
BEGIN
    SELECT *
    FROM emp_record_table
    WHERE EXP > 3;
END //


#TASK 14:
DELIMITER //

CREATE FUNCTION check_job_profile(exp INT) RETURNS VARCHAR(50)
READS SQL DATA
DETERMINISTIC
BEGIN
    DECLARE job_profile VARCHAR(50);
    
    IF exp <= 2 THEN
        SET job_profile = 'JUNIOR DATA SCIENTIST';
    ELSEIF exp > 2 AND exp <= 5 THEN
        SET job_profile = 'ASSOCIATE DATA SCIENTIST';
    ELSEIF exp > 5 AND exp <= 10 THEN
        SET job_profile = 'SENIOR DATA SCIENTIST';
    ELSEIF exp > 10 AND exp <= 12 THEN
        SET job_profile = 'LEAD DATA SCIENTIST';
    ELSEIF exp > 12 AND exp <= 16 THEN
        SET job_profile = 'MANAGER';
    ELSE
        SET job_profile = 'UNKNOWN';
    END IF;
    
    RETURN job_profile;
END //

DELIMITER ;

SELECT EMP_ID, FIRST_NAME, LAST_NAME, EXP,
     check_job_profile(exp) AS job_profile
FROM data_science_team;

#TASK15:

CREATE INDEX idx_first_name  ON empl_record_table (FIRST_NAME(20)) ;
SHOW INDEX FROM empl_record_table;
EXPLAIN SELECT *
FROM empl_record_table
WHERE FIRST_NAME = 'Eric';


#TASK 16:
SELECT EMP_ID, FIRST_NAME, LAST_NAME, SALARY, EMP_RATING,
       0.05 * SALARY * EMP_RATING AS BONUS
FROM empl_record_table;

#TASK 17:
SELECT CONTINENT, COUNTRY, AVG(SALARY) AS AVG_SALARY
FROM empl_record_table
GROUP BY CONTINENT, COUNTRY;
