-- :name create-customer! :! :n
-- :doc creates a new customer record
INSERT INTO customer
(id, first_name, last_name, address, city, postcode, email )
VALUES (:id, :first_name, :last_name, :address, :city, :postcode, :email)

---- :name get-user :? :1
---- :doc retrieves a user record given the id
--SELECT * FROM users
--WHERE id = :id


---- :name delete-user! :! :n
---- :doc deletes a user record given the id
--DELETE FROM users
--WHERE id = :id


-- :name get-stock :? :1
-- :doc retrieves stock level given the sku
SELECT * FROM item
WHERE sku = :sku