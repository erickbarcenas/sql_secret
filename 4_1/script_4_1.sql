SELECT users.name, users.handle, users.email FROM users
WHERE users.enabled = true
AND users.image IS NULL
ORDER BY users.name ASC;