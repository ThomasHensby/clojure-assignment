create table orderline(
    orderlineId int auto_increment primary key,
    ordersId int,
    foreign key (ordersId) references orders(ordersId),
    itemId int,
    quantity int);
--;;