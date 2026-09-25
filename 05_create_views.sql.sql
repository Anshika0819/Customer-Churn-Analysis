create view vw_ChurnData as
select * from prod_Churn where Customer_Status IN ('Churned', 'Stayed')
go
create view vw_JoinData as
select * from prod_Churn where	Customer_Status = 'Joined'
go