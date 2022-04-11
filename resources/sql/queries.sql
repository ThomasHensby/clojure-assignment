-- :name create-customer! :! :n
-- :doc creates a new customer record
INSERT INTO orders
(id, orderDate, first_name, last_name, address, city, postcode, status, email, total )
VALUES (:id, :orderDate, :first_name, :last_name, :address, :city, :postcode, ;status, :email, :total)
--
--
--create table orders(
--    ordersId int primary key,
--    orderDate varchar(128),
--    firstName varchar(128),
--    lastName varchar(128),
--    delAddress varchar(128),
--    city varchar(128),
--    postcode varchar(128),
--    status varchar(128),
--    email varchar(128),
--    total float);
----;;





---- :name get-user :? :1
---- :doc retrieves a user record given the id
--SELECT * FROM users
--WHERE id = :id


---- :name delete-user! :! :n
---- :doc deletes a user record given the id
--DELETE FROM users
--WHERE id = :id

-- :name get-sku-and-price :? :*
-- :doc retrieves all sku's
SELECT sku, quantity, price
FROM orderline
JOIN item
WHERE sku = :sku

-- :name get-items :? :*
-- :doc retrieves all sku's
SELECT * from item



-- :name get-stock :? :1
-- :doc retrieves stock level given the sku
SELECT * FROM item
WHERE sku = :sku


