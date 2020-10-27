SELECT DISTINCT people.name FROM movies,stars,people
WHERE movies.id=stars.movie_id AND stars.person_id=people.id 
AND stars.movie_id IN (SELECT movies.id FROM movies,stars,people
WHERE movies.id=stars.movie_id AND stars.person_id=people.id AND people.name="Kevin Bacon" AND people.birth=1958) 
AND people.name != "Kevin Bacon"
;