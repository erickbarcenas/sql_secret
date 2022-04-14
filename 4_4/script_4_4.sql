SELECT end_date FROM (
	SELECT assignments.end_date FROM assignments
	LEFT JOIN users ON users.id = assignments.user_id
	WHERE users.enabled = true
	AND assignments.start_date <= CURRENT_TIMESTAMP
	AND assignments.end_date >= CURRENT_TIMESTAMP
	ORDER BY assignments.end_date ASC 
	LIMIT (
		SELECT COUNT(users.id)/2 FROM assignments
		LEFT JOIN users ON users.id = assignments.user_id
		WHERE users.enabled = true
		AND assignments.start_date <= CURRENT_TIMESTAMP
		AND assignments.end_date >= CURRENT_TIMESTAMP
	)
) AS t1_temporal 
ORDER BY end_date DESC
LIMIT 1;