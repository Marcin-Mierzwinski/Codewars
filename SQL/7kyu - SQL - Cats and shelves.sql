-- My Codewars login: MARCIN-MIERZWINSKI
-- KATA: Cats and shelves
-- Language: SQL
-- DESCRIPTION:
-- An infinite number of shelves are arranged one above the other in a staggered fashion.
-- The cat can jump either one or three shelves at a time: from shelf i to shelf i+1 or i+3 (the cat cannot climb on the shelf directly above its head), according to the illustration:

--                  ┌────────┐
--                  │-6------│
--                  └────────┘
-- ┌────────┐       
-- │------5-│        
-- └────────┘  ┌─────► OK!
--             │    ┌────────┐
--             │    │-4------│
--             │    └────────┘
-- ┌────────┐  │
-- │------3-│  │     
-- BANG!────┘  ├─────► OK! 
--   ▲  |\_/|  │    ┌────────┐
--   │ ("^-^)  │    │-2------│
--   │ )   (   │    └────────┘
-- ┌─┴─┴───┴┬──┘
-- │------1-│
-- └────────┘
-- Input
-- Start and finish shelf numbers (always positive integers, finish no smaller than start)

-- Task
-- Find the minimum number of jumps to go from start to finish

-- Example
-- Start 1, finish 5, then answer is 2 (1 => 4 => 5 or 1 => 2 => 5)

--My solution:
select
a,
b,
case
when abs(b-a)=1
then 1
when abs(b-a)=2
then 2
when abs(b-a)%3=0
then abs(b-a)/3
when abs(b-a)%3=1
then abs(b-a)/3+1
when abs(b-a)%3=2
then abs(b-a)/3+2
else 0
end res
from jumps
-- you are given a table 'jumps' with columns 'a' (start) and 'b' (finish).
-- return a table with:
--   these columns and your result in a column named 'res'