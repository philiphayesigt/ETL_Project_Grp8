-- Query used to find movies based on a keyword - "Harry"
select m.title,m.imdb_rating,m.rating_count
from movies m, titles t
        where m.movie_id = t.id
        and t.title like '%Harry%';
		
-- Query used to find books based on a keyword - "Harry"		
select b.bookid,b.title,b.rating, b.ratings_count
from books b, titles t
	where b.bookid = t.id 
	and t.title like '%Harry%';