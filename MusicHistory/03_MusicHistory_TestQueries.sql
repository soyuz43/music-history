-- List all genres
SELECT * FROM Genre;

-- Find artists founded before 1970
SELECT * FROM Artist WHERE YearEstablished < 1970;

-- Get albums released in 1982
SELECT * FROM Album WHERE ReleaseDate LIKE '%1982%';

-- Get all songs with their artist names (JOIN)
SELECT Song.Title, Artist.ArtistName
FROM Song
JOIN Artist ON Song.ArtistId = Artist.Id;

-- Count how many songs are in each genre
SELECT Genre.Name, COUNT(*) AS SongCount
FROM Song
JOIN Genre ON Song.GenreId = Genre.Id
GROUP BY Genre.Name;
