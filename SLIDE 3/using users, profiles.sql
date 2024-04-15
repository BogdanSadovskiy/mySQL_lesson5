use newTable;

-- first ex
-- select u.name from users as u
-- where id in (select user_id 
-- from profiles as p
-- where p.registration_date >= '2023-01-01');


-- second ex
-- set sql_safe_updates= 0;
-- DELETE FROM users
-- WHERE id IN (
--     SELECT user_id 
--     FROM profiles AS p
--     WHERE DATEDIFF(NOW(), p.last_activity) > 30 
-- );
-- select id , u.name from users as u;
-- // return users with null data and users with active profile
-- // if you want to dell null date use this :
-- DELETE FROM users
-- WHERE id IN (
--     SELECT id
--     FROM users
--     WHERE id NOT IN (SELECT user_id FROM profiles WHERE user_id IS NOT NULL)
-- );

