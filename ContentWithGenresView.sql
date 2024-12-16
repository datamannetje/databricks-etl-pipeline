CREATE VIEW ContentWithGenres AS
SELECT 
    C.contentID,
    C.title,
    C.type,
    C.releaseYear,
    C.imdbId,
    C.imdbAverageRating,
    C.imdbNumVotes,
    G.genreName
FROM 
    Content C
INNER JOIN 
    ContentGenres CG ON C.contentID = CG.contentID
INNER JOIN 
    Genres G ON CG.genreID = G.genreID;

