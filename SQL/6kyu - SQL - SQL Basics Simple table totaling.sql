-- My Codewars login: MARCIN-MIERZWINSKI
-- KATA: SQL Basics: Simple table totaling.
-- Language: SQL
-- DESCRIPTION:
-- For this challenge you need to create a simple query to display each unique clan with their total points and ranked by their total points.

-- people table schema
-- name
-- points
-- clan
-- You should then return a table that resembles below

-- select on
-- rank
-- clan
-- total_points
-- total_people
-- The query must rank each clan by their total_points, you must return each unqiue clan and if there is no clan name (i.e. it's an empty string) you must replace it with [no clan specified], you must sum the total_points for each clan and the total_people within that clan.

-- ##Note The data is loaded from the live leaderboard, this means values will change but also could cause the kata to time out retreiving the information.

-- NOTE: You're solution should use pure SQL. Ruby is used within the test cases to do the actual testing.

--My solution:
select distinct
rank() over (order by pd.total_points desc) rank,
*
from
    (select
    c2.clan,
    sum(c2.points) over (partition by c2.clan) total_points,
    count(c2.name) over (partition by c2.clan) total_people
    from
        (select
        case
        when clan like '' then '[no clan specified]'
        else clan
        end clan,
        name,
        points
        from people
        order by clan)c2
    ) pd
order by total_points desc