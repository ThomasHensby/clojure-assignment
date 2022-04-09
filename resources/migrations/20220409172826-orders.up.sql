create table orders(
    ordersId int auto_increment primary key,
    customersId int,
    foreign key (customersId) references customers(customersId),
    orderDate varchar(128),
    total float(2));
--;;