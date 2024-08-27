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
        year_of_release DATE NOT null check(year_of_release > 1980)
);



create table if not exists Performs_in_the_genre (
        executor INTEGER not null references Executor(executor_id),
        genre INTEGER NOT NULL REFERENCES Genre(genre_id),
        constraint pk primary key(executor, genre)
);


create table if not exists Tracks (
        track_id serial primary key,
        name_trak varchar(40) not null,
        duration INTEGER not null check(duration > 60),
        album integer not null references Albums(album_id)
 );
 

create table if not exists Artists_of_the_album (
        id serial primary key,
        executor INTEGER not null references Executor(executor_id),
        album integer not null references Albums(album_id)
 );
 

create table if not exists Collection (
        collection_id serial primary key,
        name_collection varchar(60),
        year_of_release date not null check(year_of_release > 1980)
 );
 


create table if not exists Tracks_in_Collection (
        tracks integer not null references Tracks(track_id),
        collections integer not null references Collection(collection_id),
        constraint tc primary key (tracks, collections)
 );