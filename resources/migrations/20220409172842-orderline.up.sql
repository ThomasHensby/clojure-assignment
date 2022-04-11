create table orderline(
    orderlineId int primary key,
    ordersId int,
    foreign key (ordersId) references orders(ordersId),
    sku varchar(10),
    price float,
    quantity int);
--;;

