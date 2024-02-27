select * from cd.bookings;

select * from cd.facilities;

Select * from cd.members;


--Q1.
select * from cd.facilities;

--Q2.
select name,membercost from cd.facilities WHERE membercost > 0;

--Q3.
select * from cd.facilities where membercost > 0;

--Q4.
select facid,name,membercost,monthlymaintenance from cd.facilities where 
membercost > 0 AND membercost < ( monthlymaintenance/50);


--Q5.
Select * from cd.facilities where name  like '%Tennis%';

--Q6.
SELECT * FROM cd.facilities where facid in (1,5);

--Q7.
SELECT memid, surname, firstname,joindate FROM cd.members WHERE
joindate >= '2012-09-01';

--Q8.
SELECT DISTINCT surname FROM cd.members
ORDER BY surname
LIMIT 10;

--Q9.
SELECT MAX(joindate) from cd.members;

Select joindate from cd.members 
Order by memid DESC
LIMIT 1;

--Q10.
select count(*) from cd.facilities
Where guestcost >= 10;

--Q11.
Select facid,sum(slots) AS Total_Slots from cd.bookings
Where starttime >='2012-09-01' AND starttime <= '2012-10-01'
GROUP BY facid 
ORDER BY sum(slots);


--IMP
--Q12.
SELECT facid,SUM(slots) AS Total_Slots FROM cd.bookings
HAVING SUM(slots) >1000
ORDER BY facid;

--Q13.
Select cd.bookings.starttime AS start,cd.facilities.name 
FROM cd.bookings INNER join cd.facilities
ON cd.bookings.facid=cd.facilities.facid
WHERE cd.facilities.name IN ('Tennis Court 1','Tennis Court 2');
AND 
AND



Select cd.bookings.starttime AS start,cd.facilities.name 
FROM cd.bookings INNER join cd.facilities
ON cd.bookings.facid=cd.facilities.facid
WHERE cd.facilities.name IN ('Tennis Court 1','Tennis Court 2');





--Q14.
SELECT cd.members.firstname,cd.members.surname,cd.bookings.starttime 
FROM cd.bookings INNER JOIN cd.members 
ON cd.bookings.memid=cd.members.memid
Where cd.members.firstname = 'David' AND cd.members.surname = 'Farrell';


