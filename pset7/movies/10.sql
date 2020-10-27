SELECT DISTINCT people.name
FROM directors
    JOIN people ON directors.person_id = people.id
WHERE directors.movie_id
IN (SELECT movies.id
FROM movies
    JOIN ratings ON movies.id = ratings.movie_id
WHERE ratings.rating >= 9.0);