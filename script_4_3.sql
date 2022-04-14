SELECT users.name, users.handle, users.email, COUNT(user_skills.id) AS count_skills FROM users
LEFT JOIN user_skills ON user_skills.user_id = users.id
WHERE users.enabled = true
GROUP BY users.id, user_skills.user_id
HAVING COUNT(user_skills.id) > 1
ORDER BY COUNT(user_skills.id) ASC LIMIT 10;