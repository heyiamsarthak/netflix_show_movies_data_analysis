select * from titles
select * from credits

--top 10 shows IMDB

select title, imdb_score from titles
where imdb_score IS NOT NULL AND TYPE = 'SHOW'
order by imdb_score desc
limit 10

--top 10 movies IMDB

select title, imdb_score from titles
where imdb_score IS NOT NULL AND TYPE = 'MOVIE'
order by imdb_score desc
limit 10

--bottom 10 shows IMDB

select title, imdb_score from titles
where imdb_score IS NOT NULL AND TYPE = 'SHOW'
order by imdb_score
limit 10

--bottom 10 movies IMDB

select title, imdb_score from titles
where imdb_score IS NOT NULL AND TYPE = 'MOVIE'
order by imdb_score
limit 10



--How many movies and shows fall in each decade in Netflix's library?

select CONCAT(floor(release_year/10)*10,'s') as decade ,count(*) as number_of_movies_and_shows from titles
group by floor(release_year/10)*10
order by decade


--how does age certifications impact the dataset

select age_certification, avg(imdb_score) from titles
where age_certification IS NOT NULL
group by age_certification


select age_certification, count(*) from titles
where age_certification IS NOT NULL
group by age_certification


--Which genres are the most common?

SELECT genres, COUNT(*) count_of_media from titles
group by genres
order by count_of_media desc
limit 10

--shows with most seasons
select title, seasons from titles
where TYPE = 'SHOW'
order by seasons desc
limit 10















