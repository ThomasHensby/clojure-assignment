create table orderline(
    orderlineId int primary key,
    ordersId int,
    foreign key (ordersId) references orders(ordersId),
    sku varchar(128),
    price float,
    quantity int);
--;;

