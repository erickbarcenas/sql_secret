SELECT no_trabajadores*5*8 AS horas_trabajadas FROM (
	SELECT COUNT(users.id) AS no_trabajadores FROM assignments
	LEFT JOIN users ON users.id = assignments.user_id
	WHERE users.enabled = true
	AND assignments.start_date <= '2022-03-1 00:00:00'
	AND assignments.end_date >= '2022-03-31 00:00:00'
) AS t1_temporal


