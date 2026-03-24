use quanlybanhang;
INSERT INTO Customer (cID, cName, cAge) VALUES
(6, 'Minh Quan', 10),
(7, 'Ngoc Oanh', 20),
(8, 'Hong Ha', 50);

-- Order
INSERT INTO `Order` (oID, cID, oDate, oTotalPrice) VALUES
(5, 1, '2006-03-21', 1500000),
(6, 2, '2006-03-23', 130000),
(7, 1, '2006-03-16', 1400000);

-- Product
INSERT INTO Product (pID, pName, pPrice) VALUES
(6, 'May Giat', 3),
(7, 'Tu Lanh', 5),
(8, 'Dieu Hoa', 7),
(9, 'Quat', 1),
(10, 'Bep Dien', 2);

-- OrderDetail
INSERT INTO OrderDetail (oID, pID, odQTY) VALUES
(5, 1, 3),
(5, 3, 7),
(5, 4, 2),
(6, 1, 1),
(7, 1, 8),
(6, 5, 4),
(6, 3, 3);
SELECT oID, oDate, oTotalPrice
FROM `Order`;
SELECT c.cID, c.cName, p.pName, od.odQTY
FROM Customer c
JOIN `Order` o ON c.cID = o.cID
JOIN OrderDetail od ON o.oID = od.oID
JOIN Product p ON od.pID = p.pID
ORDER BY c.cID, o.oID, p.pID;
SELECT c.cName
FROM Customer c
LEFT JOIN `Order` o ON c.cID = o.cID
WHERE o.oID IS NULL;
SELECT o.oID, o.oDate, SUM(od.odQTY * p.pPrice) AS oTotalPrice
FROM `Order` o
JOIN OrderDetail od ON o.oID = od.oID
JOIN Product p ON od.pID = p.pID
GROUP BY o.oID, o.oDate
ORDER BY o.oID;
