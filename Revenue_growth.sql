with hotels as(
select * from dbo.['2020$']
union
select * from dbo.['2021$']
union
select * from dbo.['2022$'])

select
arrival_date_year,
hotel,
round(sum((stays_in_week_nights + stays_in_weekend_nights)*adr),2) as revenue
from hotels
group by arrival_date_year,hotel