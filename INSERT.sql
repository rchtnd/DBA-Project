INSERT INTO customer_t (customer_id, customer_name, customer_address, customer_contact, customer_email) 
VALUES 
	(1, "JarredF", "Caloocan", 0912345678, "jarredf@gmail.com"),
	(2, "StevenA", "Antipolo", 0913345678, "StevenA@gmail.com"),
	(3, "CarlV", "Antipolo", 0912445678, "CarlV@gmail.com"),
	(4, "ChristineS", "Pampanga", 0912545678, "ChristineS@gmail.com"),
	(5, "MarkD", "Rizal", 0912645678, "MarkD@gmail.com");

INSERT INTO suppliers_t (supplier_id, supplier_name, supplier_contact) 
VALUES 
	(1, "Vicks-VAPEporub", 085132311),
	(2, "Anjing-Market", 087324567),
	(3, "Ovov-supplies", 087892564),
	(4, "ShakDart Company", 088612275),
	(5, "SageHeal", 089755623);

INSERT INTO shipping_t (shipping_id, company_name, agent_name, shipping_fee, agent_contact) 
VALUES 
	(1, "J&T Express", "Marcelo Panelo", 150, "09456234561"),
	(2,"LBC Express", "Dexie Diaz", 150, "09664587894"),
	(3,"2go Express", "Oheb Parino", 150, "09236541452"),
	(4,"Lalamove", "Joemar Villaluna", 150, "0932569785"),
	(5,"Grab Delivery", "Melvin Del Rosario", 150, "09182238775");

INSERT INTO orders_t (orders_id, customer_id, supplier_id, shipping_id, date_ordered, total_price, shipping_type, payment_type) 
VALUES 
	(1, 1, 1, 1, '2022-01-23 08:24:32', 1045, 'Local Delivery', 'Cash On Delivery'),
	(2, 2, 2, 2, '2022-02-04 10:30:13', 785, 'Local Delivery', 'GCash'),
	(3, 3, 3, 3, '2022-03-15 18:05:55', 456, 'Local Delivery', 'Credit Card'),
	(4, 4, 4, 4, '2022-04-22 17:15:20', 500, 'Local Delivery', 'Paymaya'),
	(5, 5, 5, 5, '2022-08-10 15:26:40', 275, 'Local Delivery', 'Cash On Delivery');

INSERT INTO product_t (product_id, product_name, product_price, stock_qty) 
VALUES 
	(1, "Viper Vape Stick", 1500, 15),
	(2, "Strawberry Vape Flavor", 200, 5),
	(3, "Chocolate Vape Flavor", 200, 10),
	(4, "Double Edge Vape Stick", 2000, 15),
	(5, "Minimalistic Vape Stick", 1200, 3);

INSERT INTO order_details (order_id, product_id, order_quantity) 
VALUES 
	(1, 5, 3),
	(2, 4, 2),
	(3, 2, 1),
	(4, 3, 2),
	(5, 1, 1);
