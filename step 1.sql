create table prod (
    ProductID serial primary key ,
    ProductName varchar(20),
    Category varchar(20),
    Price decimal(4,2) 
)

select * from prod
drop table sales

create table sp (
    SalespersonID serial primary key ,
    SalespersonName varchar(20),
    Region varchar(20)
)

create table sales (
    SaleID serial primary key,
    ProductID int,
    QuantitySold int ,
    SaleDate date,
    SalespersonID int,
    foreign key (ProductID) references Prod(ProductID),
    foreign key (SalespersonID) references sp(SalespersonID)
)

copy prod from 'D:/Assesment/products.csv' delimiter ',' csv header

copy sp from 'D:/Assesment/salesperson.csv' delimiter ',' csv header

copy sales from 'D:/Assesment/sales.csv' delimiter ',' csv header


select * from sp
truncate table sp



