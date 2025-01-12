create database test;

use test;

select * from MentorSession;

alter table MentorSession
rename column ï»¿Date to `Date`; 


select `Date`, `Call`,
sum(`Call`) over(order by `Date`) as rolling_sum
from MentorSession;


select s1.`Date`, s1.`Call`, 
sum(s2.`Call`) as rolling_sum
from mentorsession s1
join mentorsession s2 on s1.`Date` >= s2.`Date`
group by 1, 2
order by 1;
