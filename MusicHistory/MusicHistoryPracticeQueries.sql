-- 1. Query all of the entries in the `genre` table
SELECT * FROM Genre;

-- 2. Query all the entries in the `artist` table and order by the artist's name
SELECT * FROM Artist ORDER BY ArtistName;

-- 3. List all the songs and include the artist name
SELECT Song.Title AS SongTitle, Artist.ArtistName
FROM Song
JOIN Artist ON Song.ArtistId = Artist.Id;

-- 4. List all artists that have a Pop album
SELECT DISTINCT Artist.ArtistName
FROM Artist
JOIN Album ON Album.ArtistId = Artist.Id
JOIN Genre ON Album.GenreId = Genre.Id
WHERE Genre.Name = 'Pop';

-- 5. List artists that have a Jazz or Rock album
SELECT DISTINCT Artist.ArtistName
FROM Artist
JOIN Album ON Album.ArtistId = Artist.Id
JOIN Genre ON Album.GenreId = Genre.Id
WHERE Genre.Name IN ('Jazz', 'Rock');

-- 6. List albums with no songs
SELECT Album.Title
FROM Album
LEFT JOIN Song ON Song.AlbumId = Album.Id
WHERE Song.Id IS NULL;

-- 7. Add a favorite artist
INSERT INTO Artist (ArtistName, YearEstablished)
VALUES ('Nujabes', 1996);

-- 8. Add an album by that artist
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES ('Modal Soul', '11/11/2005', 3600, 'Hydeout Productions',
    (SELECT Id FROM Artist WHERE ArtistName = 'Nujabes'),
    (SELECT Id FROM Genre WHERE Name = 'Electronic'));

-- 9. Add songs to that album
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES 
('Feather', 300, '11/11/2005',
    (SELECT Id FROM Genre WHERE Name = 'Electronic'),
    (SELECT Id FROM Artist WHERE ArtistName = 'Nujabes'),
    (SELECT Id FROM Album WHERE Title = 'Modal Soul')),
('Luv(sic) Part 3', 280, '11/11/2005',
    (SELECT Id FROM Genre WHERE Name = 'Electronic'),
    (SELECT Id FROM Artist WHERE ArtistName = 'Nujabes'),
    (SELECT Id FROM Album WHERE Title = 'Modal Soul'));

-- 10. Get song titles, album title, and artist name (your additions)
SELECT Song.Title AS SongTitle, Album.Title AS AlbumTitle, Artist.ArtistName
FROM Song
LEFT JOIN Album ON Song.AlbumId = Album.Id
LEFT JOIN Artist ON Song.ArtistId = Artist.Id
WHERE Artist.ArtistName = 'Nujabes'
  AND Album.Title = 'Modal Soul';

-- 11. How many songs exist for each album
SELECT Album.Title, COUNT(Song.Id) AS SongCount
FROM Album
LEFT JOIN Song ON Song.AlbumId = Album.Id
GROUP BY Album.Title;

-- 12. How many songs exist for each artist
SELECT Artist.ArtistName, COUNT(Song.Id) AS SongCount
FROM Artist
LEFT JOIN Song ON Song.ArtistId = Artist.Id
GROUP BY Artist.ArtistName;

-- 13. How many songs exist for each genre
SELECT Genre.Name AS GenreName, COUNT(Song.Id) AS SongCount
FROM Genre
LEFT JOIN Song ON Song.GenreId = Genre.Id
GROUP BY Genre.Name;

-- 14. Artists that have albums on more than one label
SELECT Artist.ArtistName, COUNT(DISTINCT Album.Label) AS LabelCount
FROM Artist
JOIN Album ON Album.ArtistId = Artist.Id
GROUP BY Artist.ArtistName
HAVING COUNT(DISTINCT Album.Label) > 1;

-- 15. Album with the longest duration
SELECT Title, AlbumLength
FROM Album
WHERE AlbumLength = (
    SELECT MAX(AlbumLength) FROM Album
);

-- 16. Song with the longest duration
SELECT Title, SongLength
FROM Song
WHERE SongLength = (
    SELECT MAX(SongLength) FROM Song
);

-- 17. Song with longest duration, also show album title
SELECT Song.Title AS SongTitle, Song.SongLength, Album.Title AS AlbumTitle
FROM Song
JOIN Album ON Song.AlbumId = Album.Id
WHERE Song.SongLength = (
    SELECT MAX(SongLength) FROM Song
);
