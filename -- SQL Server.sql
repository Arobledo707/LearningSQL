-- SQL Server 
-- database is on Google Cloud
-- Simple students table
-- Insert
-- 12 distinct students are added
-- run this a few times to add duplicates
/*
INSERT INTO Students(studentID, firstName, lastName, grade) values (12345, 'John', 'Doe', 10 );
INSERT INTO Students(studentID, firstName, lastName, grade) values (54321, 'Jane', 'Doe', 9)
INSERT INTO Students(studentID, firstName, lastName, grade) values (43254, 'Viktor', 'Robertson', 12)
INSERT INTO Students(studentID, firstName, lastName, grade) values (57563, 'Rebecca', 'Johnson', 11)
INSERT INTO Students(studentID, firstName, lastName, grade) values (94234, 'Jessica', 'Winters', 12)
INSERT INTO Students(studentID, firstName, lastName, grade) values (85935, 'Robert', 'Ramirez', 9)
INSERT INTO Students(studentID, firstName, lastName, grade) values (32452, 'Tom', 'Baker', 10)
INSERT INTO Students(studentID, firstName, lastName, grade) values (22452, 'Jake', 'Smith', 12)
INSERT INTO Students(studentID, firstName, lastName, grade) values (86352, 'Veronica', 'Reader', 9)
INSERT INTO Students(studentID, firstName, lastName, grade) values (72421, 'Alexandra', 'Thompson', 10)
INSERT INTO Students(studentID, firstName, lastName, grade) values (34153, 'Joel', 'Table', 11)
INSERT INTO Students(studentID, firstName, lastName, grade) values (63125, 'Scott', 'Gram', 11)
*/
-- List all the students
-- if there are more than 12 there are duplicates
--SELECT * from Students;
--Selecting 
-- 
/*SELECT * 
from(
    select *, rowNumber=ROW_NUMBER() over (partition by studentID order by firstName)
    from Students
) x
where rowNumber > 1 */

-- Delete
/*
DELETE x from (
select *, rowNumber=ROW_NUMBER() over (partition by studentID order by firstName)
from Students
) x
where rowNumber > 1
*/

--SELECT * from Students;

-- Lists students that are in grade 9 through 11
/*SELECT * from Students
WHERE grade BETWEEN 9 and 11; */


-- Lists students where firstName starts with a J or ends with an a
--Select * from Students
-- This is case sensitive so it will not get j or a
--WHERE firstName LIKE 'J%' or firstName LIKE '%a';

--Since I forgot to add GPA as a Column I'll use IDs for now
--Select * from Students
--WHERE studentID BETWEEN 10000 AND 70000