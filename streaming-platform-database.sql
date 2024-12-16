-- Create the Content table
CREATE TABLE Content (
    contentID INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(255) NOT NULL,
    type NVARCHAR(50) NOT NULL,
    releaseYear INT,
    imdbId NVARCHAR(15) NOT NULL,
    imdbAverageRating FLOAT,
    imdbNumVotes INT
);

-- Create the Genres table
CREATE TABLE Genres (
    genreID INT IDENTITY(1,1) PRIMARY KEY,
    genreName NVARCHAR(100) UNIQUE NOT NULL
);

-- Create the ContentGenres table
CREATE TABLE ContentGenres (
    contentID INT NOT NULL,
    genreID INT NOT NULL,
    PRIMARY KEY (contentID, genreID),
    FOREIGN KEY (contentID) REFERENCES Content(contentID),
    FOREIGN KEY (genreID) REFERENCES Genres(genreID)
);

-- Create the Countries table
CREATE TABLE Countries (
    countryID INT IDENTITY(1,1) PRIMARY KEY,
    countryCode NVARCHAR(5) UNIQUE NOT NULL
);

-- Create the ContentCountries table
CREATE TABLE ContentCountries (
    contentID INT NOT NULL,
    countryID INT NOT NULL,
    PRIMARY KEY (contentID, countryID),
    FOREIGN KEY (contentID) REFERENCES Content(contentID),
    FOREIGN KEY (countryID) REFERENCES Countries(countryID)
);

-- Create the Platforms table
CREATE TABLE Platforms (
    platformID INT IDENTITY(1,1) PRIMARY KEY,
    platformName NVARCHAR(100) UNIQUE NOT NULL
);

-- Create the ContentPlatform table
CREATE TABLE ContentPlatform (
    contentID INT NOT NULL,
    platformID INT NOT NULL,
    PRIMARY KEY (contentID, platformID),
    FOREIGN KEY (contentID) REFERENCES Content(contentID),
    FOREIGN KEY (platformID) REFERENCES Platforms(platformID)
);

