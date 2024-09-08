--Название самого длинного трека
select name_trak, duration from tracks
where duration = (select max(duration) from tracks);

--Название треков, продолжительность которых не менее 3,5 минут
select name_trak from tracks
where duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
select name_collection from collection
where year_of_release between 2018 and 2020;

--Исполнители, чьё имя состоит из одного слова
select name_executor from executor
where name_executor not like '% %';

--Название треков, которые содержат слово «мой» или «my»
select name_trak from tracks
where string_to_array(lower(name_trak), ' ') && array['my', 'мой']; 


--Количество исполнителей в каждом жанре
select name_genre, count(executor) from performs_in_the_genre pitg 
join genre g on pitg.genre = g.genre_id 
group by name_genre 
order by count(executor);

--Количество треков, вошедших в альбомы 2019–2020 годов
select count(track_id) from tracks t
join albums a on t.album = a.album_id 
where year_of_release between 2019 and 2020;

--Средняя продолжительность треков по каждому альбому
select name_album, avg(duration) from albums a 
left join tracks t on a.album_id = t.album
group by name_album
order by avg(duration);

--Все исполнители, которые не выпустили альбомы в 2020 году
select name_executor from executor e 
where name_executor not in 
   (select name_executor from executor e2 
   join artists_of_the_album aota on aota.executor = e.executor_id 
   join albums a on aota.album = a.album_id 
   where year_of_release = 2020);


--Названия сборников, в которых присутствует конкретный исполнитель
select name_collection from collection c 
join tracks_in_collection tic on tic.collections = c.collection_id 
join tracks t on tic.tracks = t.track_id 
join albums a on a.album_id = t.album 
join artists_of_the_album aota on aota.album = a.album_id 
join executor e on e.executor_id = aota.executor 
where name_executor = 'Zivert';

  