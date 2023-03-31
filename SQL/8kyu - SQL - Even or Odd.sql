--My Codewars login: MARCIN-MIERZWINSKI
--KATA: Even or Odd
--Language: SQL
--DESCRIPTION: Even or Odd

select
number,
case
    when number%2=0
    then 'Even'
    else 'Odd'
end is_even 
from numbers