SELECT users.name, users.handle FROM users
LEFT JOIN user_skills ON user_skills.user_id = users.id
WHERE users.enabled = true
AND user_skills.skill_id = 1 
AND user_skills.level
IN ('competent', 'proficient', 'expert')
OR user_skills.skill_id = 13
ORDER BY users.id ASC;