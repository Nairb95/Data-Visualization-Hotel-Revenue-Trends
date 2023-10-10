with hotels as(
select * from dbo.['2020$']
union
select * from dbo.['2021$']
union
select * from dbo.['2022$'])

select * from hotels
left join dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = hotels.meal