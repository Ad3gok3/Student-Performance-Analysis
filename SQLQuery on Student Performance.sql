--Select * from [StudentsPerformance 1]

--1. What is the distribution of student by gender and race/ethnicity?

select Gender, Race_Ethnicity, count(*) as student_Count from [StudentsPerformance 1]
group by Gender,Race_Ethnicity
order by student_count Desc

--2.What is the distribution of students by gender?

Select Gender, Count(*) as student_count from [StudentsPerformance 1]
group by gender 

--3. Does parental level of education affect student performance?
select Parental_level_of_Education,
avg (math_Score) as avg_math, avg(Reading_Score) as avg_reading, avg(writing_score) as avg_writing from [StudentsPerformance 1]
group by Parental_Level_Of_Education
order by avg_math desc

--4. How do average scores compare between male and female?
select Gender,
Avg(Math_Score) as avg_math,
avg(Reading_Score) as avg_reading,
avg(writing_score) as avg_writing from [StudentsPerformance 1]
group by Gender

--5. Which race/ethnicity has the highest average scores?
select Race_ethnicity,
Avg(Math_Score) as avg_math,
avg(Reading_Score) as avg_reading,
avg(writing_score) as avg_writing from [StudentsPerformance 1]
group by Race_Ethnicity
order by avg_math desc

--6. Did students with standard lunch perform better than those with free/reduced lunch? 
select Lunch,
Avg(Math_Score) as avg_math,
avg(Reading_Score) as avg_reading,
avg(writing_score) as avg_writing from [StudentsPerformance 1]
group by lunch
order by avg_math desc

--7. Did students who took test prep perfom better than those who didn't?
select Test_Preparation_Course,
Avg(Math_Score) as avg_math,
avg(Reading_Score) as avg_reading,
avg(writing_score) as avg_writing from [StudentsPerformance 1]
group by Test_Preparation_Course
order by avg_reading desc

--8. Does test prep affect genders differently?
select gender, Test_Preparation_Course,
Avg(Math_Score) as avg_math,
avg(Reading_Score) as avg_reading,
avg(writing_score) as avg_writing from [StudentsPerformance 1]
group by Gender,Test_Preparation_Course
ORDER BY avg_math desc

--9. How many students scored above 90 in all three subjects?
select count(*) as Best_Students from [StudentsPerformance 1]
where Math_Score > 90 and Reading_Score >90 and Writing_Score > 90

--10. How many students are struggling (Scores < 50 in any subject)?
select count (*) as poor_performing from [StudentsPerformance 1]
where Math_Score < 50 and Reading_Score < 50 and Writing_Score < 50



