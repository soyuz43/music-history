-- Music History Practice Queries

-- 1. Query all of the entries in the `genre` table

-- 2. Query all the entries in the `artist` table and order by the artist's name

-- 3. Write a SELECT query that lists all the songs in the `song` table and include the artist name

-- 4. Write a SELECT query that lists all the artists that have a Pop album

-- 5. Write a SELECT query that lists all the artists that have a Jazz or Rock album

-- 6. Write a SELECT statement that lists the albums with no songs

-- 7. Using the INSERT statement, add one of your favorite artists to the `artist` table

-- 8. Using the INSERT statement, add one or more albums by your artist to the `album` table

-- 9. Using the INSERT statement, add some songs that are on that album to the `song` table

-- 10. Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in
-- Use LEFT JOIN to connect the tables, and WHERE to filter the results to the album and artist you added

--    SELECT a.title, s.title FROM album a LEFT JOIN song s ON s.album_id = a.id;
--    SELECT a.title, s.title FROM song s LEFT JOIN album a ON s.album_id = a.id;

-- 11. Write a SELECT statement to display how many songs exist for each album
-- Use COUNT() and GROUP BY

-- 12. Write a SELECT statement to display how many songs exist for each artist
-- Use COUNT() and GROUP BY

-- 13. Write a SELECT statement to display how many songs exist for each genre
-- Use COUNT() and GROUP BY

-- 14. Write a SELECT query that lists the artists that have put out records on more than one record label
-- Use GROUP BY + HAVING

-- 15. Using MAX(), find the album with the longest duration
-- Show album title and duration

-- 16. Using MAX(), find the song with the longest duration
-- Show song title and duration

-- 17. Modify the previous query to also display the title of the album

-- TIP: You can run individual queries by highlighting them before pressing F5 or clicking Execute.
