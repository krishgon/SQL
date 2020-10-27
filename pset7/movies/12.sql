SELECT movies.title
FROM movies
	JOIN stars ON movies.id=stars.movie_id,
		people ON stars.person_id=people.id
WHERE people.name="Johnny Depp" 
and movies.id in (SELECT movies.id
FROM movies
	JOIN stars ON movies.id=stars.movie_id,
		people ON stars.person_id=people.id
WHERE people.name="Helena Bonham Carter")