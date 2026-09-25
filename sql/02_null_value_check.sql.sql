select Gender, Count(Gender) as TotalCount,
Count(Gender) * 100.0 / (Select Count(*) from stg_Churn) as Percentage
from stg_Churn
group by Gender


select Contract, count(Contract) as TotalCount,
Count(Contract) * 100.0 / (select count(*) from stg_Churn) as Percentage
from stg_Churn
Group by Contract


select Customer_Status, count(Customer_Status) as TotalCount, sum(Total_Revenue) as Totalrev,
sum(Total_Revenue) / (select sum(Total_Revenue) from stg_Churn) * 100 as Percentage
From stg_Churn
group by Customer_Status


select State, Count(State) as TotalCount,
count(State) * 100.0 / (select Count(*) from stg_Churn) as Percentage
from stg_Churn
group by State
order by Percentage desc

Select distinct Internet_Type
from stg_Churn

