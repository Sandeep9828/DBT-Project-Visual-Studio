
with cte as 
(
select *,
Row_number() over(partition by id order by updatedDate desc ) as deduplication_Id
 from {{source('source','items')}}

)

select id, name,category, updatedDate from cte where deduplication_Id = 1