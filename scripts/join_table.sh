SELECT m.title, u.email, s.rating, s.watched_recently
FROM screenings s
INNER JOIN users u
    ON s.user_id = u.id
INNER JOIN movies m
    ON s.movie_id = m.id


Options
WHERE s.rating > 2
