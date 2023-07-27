Create Database museum;
Use museum;
create table met(
ID INT PRIMARY KEY,
Department varchar(100),
Category varchar(100),
Title varchar(100),
Artist varchar(100),
Date varchar(100),
Medium varchar(100),
Country varchar(100));
select * from met;

-- select top 10 rows in met table --

select * from met
limit 10;

-- How many pieces are in the American Metropolitan Art collection? [count(*)] --

select count(*) from met;

--  Count the number of pieces where the category includes ‘celery’.--

select count(*) as count_celery from met
where category = 'celery vase';

-- Find the title and medium of the oldest piece(s) in the collection.--
select Date , title , medium from met
order by Date
limit 1;

-- Find the top 10 countries with the most pieces in the collection.--
select country , count(*) as top_most from met
group by country
order by top_most desc
limit 10;

-- Find the categories which have more than 100 pieces.--
select category , count(*) as top_category from met
group by category
having top_category > 100;

-- Count the number of pieces where the medium contains ‘gold’ or ‘silver’ and sort in descending order.--
select medium , count(*) from met
where (medium = 'gold') or (medium  = 'silver')
group by medium
order by medium desc;




