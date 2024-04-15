use VindraSales;
select * from VrindaStore;

--Total Order
select count(distinct OrderID) AS 'Total Order' from VrindaStore;

--Total Revenue
select sum(Amount) AS 'Total Revenue' from VrindaStore;

--Total Product Quantity
select count(Qty) AS 'Total Product Quantity' from VrindaStore;

--Analysis sales Men VS Women
select Gender,sum(Amount) AS 'Total Revenue',count(distinct OrderID) AS 'Total Order' from VrindaStore group by Gender order by 'Total Revenue' desc;

--AgeGroup wise sales revenue
select AgeGroup,sum(Amount) AS 'Total Revenue' from VrindaStore Group by AgeGroup order by [Total Revenue] desc;

--Monthly sales Revenue
select Month,sum(Amount) AS 'Total Revenue' from VrindaStore group by Month order by 'Total Revenue' desc;

-- %Orders Status 
select Status,concat(COUNT(status)*100/(select count(status) from VrindaStore),'%') AS 'Status%' from VrindaStore group by Status order by COUNT(status) desc;

--Channel Wise Sales Revenue
select [Channel ],SUM(Amount) AS 'Total Revenue',concat(round(sum(Amount)*100/(select sum(Amount) from VrindaStore),2),'%') AS 'Revenue%' from VrindaStore group by [Channel ] order by 'Total Revenue' desc;

--Caegory Wise Sales Revenue
select category,sum(Amount) AS 'Total Revenue',concat(round(sum(Amount)*100/(select sum(Amount) from VrindaStore),2),'%') AS 'Revenue%' from VrindaStore group by Category order by 'Total Revenue' desc;

--Size wiese sales revenue
select Size,sum(Amount) AS 'Total Revenue',concat(round(sum(Amount)*100/(select sum(Amount) from VrindaStore),2),'%') AS 'Revenue%' from VrindaStore group by Size order by 'Total Revenue' desc;

--Top 10 Sate Sales Revenue
select top 10 shipstate,sum(Amount) AS 'Total Amount' from VrindaStore group by shipstate order by 'Total Amount' desc;

--Top 10 City Sales Revenue
select shipcity,sum(Amount) AS 'Total Revenue' from VrindaStore group by shipcity order by 'Total Revenue' desc;