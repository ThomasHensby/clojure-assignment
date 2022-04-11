create table item(
    sku varchar(10)  PRIMARY KEY,
    stock int);
--;;



INSERT INTO item(sku, stock)
values
-- 4 different sizes, colour black, standard quality, t-shirt style
('00000000',10),
('01000000',10),
('02000000',10),
('03000000',10),
('04000000',10),
-- 4 different sizes, colour black, standard quality, vest style
('00000001',10),
('01000001',10),
('02000001',10),
('03000001',10),
('04000001',10),
-- 4 different sizes, colour black, Premium quality, t-shirt style
('00000100',10),
('01000100',10),
('02000100',10),
('03000100',10),
('04000100',10),
-- 4 different sizes, colour black, Premium quality, vest style
('00000101',10),
('01000101',10),
('02000101',10),
('03000101',10),
('04000101',10),
-- 4 different sizes, colour red, standard quality, t-shirt style
('00010000',10),
('01010000',10),
('02010000',10),
('03010000',10),
('04010000',10),
-- 4 different sizes, colour red, standard quality, vest style
('00010001',10),
('01010001',10),
('02010001',10),
('03010001',10),
('04010001',10),
-- 4 different sizes, colour red, Premium quality, t-shirt style
('00010100',10),
('01010100',10),
('02010100',10),
('03010100',10),
('04010100',10),
-- 4 different sizes, colour red, Premium quality, vest style
('00010101',10),
('01010101',10),
('02010101',10),
('03010101',10),
('04010101',10);

