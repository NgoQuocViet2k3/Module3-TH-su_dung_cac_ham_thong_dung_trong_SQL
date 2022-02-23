use quanlisinhvien;
select address, count(studentName) as "Số lượng học viên" from Student
group by address;
select S.studentID,S.studentName,avg(mark)
from student S join mark M on S.StudentID = M.StudentID
group by StudentID,StudentName
having avg(Mark) > 15;
select S.studentID, S.StudentName, avg(mark)
from student S join mark M on S.StudentID = M.StudentID 
group by S.studentID,S.StudentName
having avg(Mark) >= all(select avg(mark) from mark group by mark.StudentID); 

