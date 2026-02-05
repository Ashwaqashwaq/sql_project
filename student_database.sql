SELECT * FROM students.student_database;
SELECT email_id
FROM student_database
WHERE email_id REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$';
select username,parent_education,rank_intermediate from student_database where parent_education="Graduate" and rank_intermediate<10;
select 
username,distance_home_college, 
CASE
when distance_home_college<2 then "get bus fees 50% off"
else "no bus fees off" 
end as bus_fees_off from student_database;
select username,aadhar_number from student_database where aadhar_number REGEXP '^([0-9]{4} ?){2}[0-9]{4}$';
SELECT username
FROM student_database
WHERE username REGEXP '^[A-Za-z].*i$';
select username,scl_marks,parent_highest_qualification,parent_english_status from student_database where parent_english_status="Fluent" order by scl_marks desc
limit 2;
select gender,count(username) from student_database group by gender;
select username,rank_intermediate,blood_group from student_database where blood_group ="A+" order by rank_intermediate   limit 1 offset 1;
SELECT branch,
       SUM(fees) AS total_fees,
       SUM(bus_fees) AS total_bus_fees,
       SUM(fees + bus_fees) AS grand_total
FROM student_database
GROUP BY branch
ORDER BY total_fees DESC, total_bus_fees DESC;




