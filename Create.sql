CREATE TABLE IF NOT EXISTS Genre (
        genre_id SERIAL PRIMARY KEY, 
        name_genre VARCHAR(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS Executor (
        executor_id SERIAL PRIMARY KEY,
        name_executor VARCHAR(60) NOT null
);


CREATE TABLE IF NOT EXISTS Albums (
        album_id SERIAL PRIMARY KEY,
        name_album VARCHAR(40) NOT NULL,
        year_of_release INTEGER NOT null check(year_of_release > 1980)
);



CREATE TABLE IF NOT EXISTS Performs_in_the_genre (
        executor INTEGER NOT NULL REFERENCES Executor(executor_id),
        genre INTEGER NOT NULL REFERENCES Genre(genre_id),
        CONSTRAINT pk PRIMARY KEY(executor, genre)
);


CREATE TABLE IF NOT EXISTS Tracks (
        track_id SERIAL PRIMARY KEY,
        name_trak VARCHAR(40) NOT NULL,
        duration INTEGER NOT NULL CHECK(duration > 60),
        album INTEGER NOT NULL REFERENCES Albums(album_id)
 );
 

CREATE TABLE IF NOT EXISTS Artists_of_the_album (
        id SERIAL PRIMARY KEY,
        executor INTEGER NOT NULL REFERENCES Executor(executor_id),
        album INTEGER NOT NULL REFERENCES Albums(album_id)
 );
 

CREATE TABLE IF NOT EXISTS Collection (
        collection_id SERIAL PRIMARY KEY,
        name_collection VARCHAR(60),
        year_of_release INTEGER NOT NULL CHECK (year_of_release > 1980)
 );
 


CREATE TABLE IF NOT EXISTS Tracks_in_Collection (
        tracks INTEGER NOT NULL REFERENCES Tracks(track_id),
        collections INTEGER NOT NULL REFERENCES Collection(collection_id),
        CONSTRAINT tc PRIMARY KEY (tracks, collections)
 );
