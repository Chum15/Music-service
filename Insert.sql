-- Добавление жанров
insert into genre(name_genre)
values ('Поп-музыка');

insert into genre(name_genre)
values ('Rock');

insert into genre(name_genre)
values ('Rap');

insert into genre(name_genre)
values ('Punk Rock');

-- добавление исполнителей
insert into executor(name_executor)
values ('Gayazovs Brothers');

 insert into executor(name_executor)
 values ('Zivert');

insert into executor(name_executor)
values ('Пикник');

insert into executor(name_executor)
values ('Максим');

insert into executor(name_executor)
values ('Многоточие');

insert into executor(name_executor)
values ('Король и Шут');

insert into executor(name_executor)
values ('executor');

--добавление альбомов
insert into albums (name_album, year_of_release)
values ('Увезите меня на Дип-хаус', 2019);

insert into albums (name_album, year_of_release)
values ('Vinyl', 2019);

insert into albums (name_album, year_of_release)
values ('Мракобесие и джаз', 2007);

insert into albums (name_album, year_of_release)
values ('Мой рай', 2007);

insert into albums (name_album, year_of_release)
values ('Неномерной', 2003);

insert into albums (name_album, year_of_release)
values ('Акустический альбом', 1999);

insert into albums (name_album, year_of_release)
values ('album', 2024);


-- Добавление песен
insert into tracks(name_trak, duration, album) 
values ('Увезите меня на Дип-хаус', 176, 1);

insert into tracks(name_trak, duration, album)
values ('Credo', 225, 2);

insert into tracks(name_trak, duration, album)
values ('Из мышеловки', 270, 3);

insert into tracks(name_trak, duration, album)
values ('Мой рай', 212, 4);

insert into tracks(name_trak, duration, album)
values ('Что стоит', 242, 5);

insert into tracks(name_trak, duration, album)
values ('Кукла колдуна', 203, 6);

insert into tracks(name_trak, duration, album)
values ('Наблюдатель', 284, 6);

insert into tracks(name_trak, duration, album)
values ('myself', 125, 7);

insert into tracks(name_trak, duration, album)
values ('by myself', 234, 7);

insert into tracks(name_trak, duration, album)
values ('bemy self', 143, 7);

insert into tracks(name_trak, duration, album)
values ('myself by', 285, 7);

insert into tracks(name_trak, duration, album)
values ('by myself by', 113, 7);

insert into tracks(name_trak, duration, album)
values ('beemy', 90, 7);

insert into tracks(name_trak, duration, album)
values ('premyne', 233, 7);

insert into tracks(name_trak, duration, album)
values ('my own', 298, 7);

insert into tracks(name_trak, duration, album)
values ('own my', 145, 7);

insert into tracks(name_trak, duration, album)
values ('my', 258, 7);

insert into tracks(name_trak, duration, album)
values ('oh my god', 222, 7)


--Добавление сборников
insert into collection (name_collection, year_of_release)
values ('ТОП-100 треков 2020года', 2020);

insert into collection (name_collection, year_of_release)
values ('Популярные треки в 2015 году', 2015);

insert into collection (name_collection, year_of_release)
values ('Песни 2000- 2010', 2010);

insert into collection (name_collection, year_of_release)
values ('Все треки', 2024);


--Добавление артистов выпускающих альбомы
insert into artists_of_the_album (executor, album)
values (1, 1);

insert into artists_of_the_album (executor, album)
values (2, 2);

insert into artists_of_the_album (executor, album)
values (3, 3);

insert into artists_of_the_album (executor, album)
values (4, 4);

insert into artists_of_the_album (executor, album)
values (5, 5);

insert into artists_of_the_album (executor, album)
values (6, 6);

insert into artists_of_the_album (executor, album)
values (7,7);

--Добавление исполнителей в жанрах
insert into performs_in_the_genre (executor, genre)
values (1, 1);

insert into performs_in_the_genre (executor, genre)
values (2, 1);

insert into performs_in_the_genre (executor, genre)
values (3, 2);

insert into performs_in_the_genre (executor, genre)
values (4, 1);

insert into performs_in_the_genre (executor, genre)
values (5, 3);

insert into performs_in_the_genre (executor, genre)
values (6, 4);

insert into performs_in_the_genre (executor, genre)
values (7, 3);


--Добавление треков в коллекции
insert into tracks_in_collection (tracks, collections)
values (1, 1);

insert into tracks_in_collection (tracks, collections)
values (2, 1);

insert into tracks_in_collection (tracks, collections)
values (3, 2);

insert into tracks_in_collection (tracks, collections)
values (4, 2);

insert into tracks_in_collection (tracks, collections)
values (5, 2);

insert into tracks_in_collection (tracks, collections)
values (3, 3);

insert into tracks_in_collection (tracks, collections)
values (4, 3);

insert into tracks_in_collection (tracks, collections)
values (5, 3);

insert into tracks_in_collection (tracks, collections)
values (1, 4);

insert into tracks_in_collection (tracks, collections)
values (2, 4);

insert into tracks_in_collection (tracks, collections)
values (3, 4);

insert into tracks_in_collection (tracks, collections)
values (4, 4);

insert into tracks_in_collection (tracks, collections)
values (5, 4);

insert into tracks_in_collection (tracks, collections)
values (6, 4);





