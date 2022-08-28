-- Comments in SQL Start with dash-dash --
-- Comments in SQL Start with dash-dash --

Select * from analytics  --Find the app with an ID of 1880.--
where id = 1880;

Select id, app_name  from analytics  --Find the ID and app name for all apps that were last updated on August 01, 2018.--
where last_updated = 2018-08-01;

select category, count(app_name) from analytics  --Count the number of apps in each category, e.g. “Family | 1972”.--
group by category;

select category, count(category) from analytics  --Count the number of apps in each category, e.g. “Family | 1972”.--
group by limit(5);

select app_name, reviews from analytics  --Find the top 5 most-reviewed apps and the number of reviews for each.--
order by reviews desc limit(5);

select app_name, reviews from analytics --Find the app that has the most reviews with a rating greater than equal to 4.8.--
where rating >=4.8
order by reviews desc limit(5);

select category, avg(rating) from analytics --Find the average rating for each category ordered by the highest rated to lowest rated.--
group by category
order by avg(rating) desc;

select app_name, price, rating from analytics  --Find the name, price, and rating of the most expensive app with a rating that’s less than 3.--
where rating < 3
order by price desc
limit(1);

select app_name, rating, min_installs from analytics  --Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.--
where min_installs <= 50 and rating >0
order by rating desc;

select name_app from analytics   --Find the names of all apps that are rated less than 3 with at least 10000 reviews.--
where rating <3 and reviews >= 10000;


select app_name, reviews, price from analytics     --Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.--
where price between .10 and 1.00
order by reviews desc limit(10);

select app_name, last_updated from analytics  --Find the most out of date app.--
where last_updated =  (select min(last_updated) from analytics)
limit(1);

select app_name, price from analytics  --Find the most expensive app (the query is very similar to #11).--
order by price desc limit(1);

select avg(reviews)*count(reviews) from analytics;  --Count all the reviews in the Google Play Store.--

select category, count(app_name) AS number_of_app from analytics --Count the number of apps in each category, e.g. “Family | 1972”.--
group by category
order by number_of_app desc
limit(10);

--Find the app that has the highest proportion of min_installs to reviews, among apps that have been installed at least 100,000 times. --
select app_name, reviews, min_installs, min_installs/reviews as proportion
from analytics
where min_installs >10000
Order by proportion desc limit(1);
