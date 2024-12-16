CREATE VIEW ContentWithCountries AS
SELECT 
    C.contentID,
    C.title,
    C.type,
    C.releaseYear,
    C.imdbId,
    C.imdbAverageRating,
    C.imdbNumVotes,
    CO.countryCode
FROM 
    Content C
INNER JOIN 
    ContentCountries CC ON C.contentID = CC.contentID
INNER JOIN 
    Countries CO ON CC.countryID = CO.countryID;
