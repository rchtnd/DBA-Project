CREATE TABLE customer_t (
	customer_id INTEGER NOT NULL,
    customer_name VARCHAR(20) NOT NULL,
    customer_address VARCHAR(50) NOT NULL,
    customer_contact VARCHAR(20) NOT NULL,
    customer_email VARCHAR(20) NOT NULL,
    CONSTRAINT customer_pk PRIMARY KEY (customer_id)
);
CREATE TABLE suppliers_t(
	supplier_id INTEGER NOT NULL,
    supplier_name VARCHAR(20) NOT NULL,
	supplier_contact INTEGER NOT NULL,
    CONSTRAINT supplier_fk PRIMARY KEY(supplier_id)
);

CREATE TABLE shipping_t(
	shipping_id INTEGER NOT NULL,
    company_name VARCHAR(20) NOT NULL,
    agent_name VARCHAR(20) NOT NULL,
    shipping_fee INTEGER NOT NULL,
    agent_contact VARCHAR(11) NOT NULL,
    CONSTRAINT shipping_id_pk PRIMARY KEY(shipping_id)
);

CREATE TABLE orders_t (
	orders_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    supplier_id INTEGER NOT NULL,
    shipping_id INTEGER NOT NULL,
    date_ordered DATETIME,
    total_price INTEGER NOT NULL,
    shipping_type VARCHAR(20),
    payment_type VARCHAR(20),
    CONSTRAINT orders_pk PRIMARY KEY(orders_id),
    CONSTRAINT customer_fk FOREIGN KEY(customer_id)
    REFERENCES customer_t(customer_id),
	CONSTRAINT supplier_fk FOREIGN KEY(supplier_id)
    REFERENCES suppliers_t(supplier_id),
    CONSTRAINT shipping_id_fk FOREIGN KEY(shipping_id)
    REFERENCES shipping_t(shipping_id)
);

CREATE TABLE product_t(
	product_id INTEGER NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_price INTEGER NOT NULL,
    stock_qty INTEGER NOT NULL,
    CONSTRAINT product_id_pk PRIMARY KEY (product_id)
);

CREATE TABLE order_details(
	order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    order_quantity INTEGER NOT NULL,
    CONSTRAINT order_id_fk FOREIGN KEY (order_id)
    REFERENCES orders_t(orders_id),
    CONSTRAINT product_id_fk FOREIGN KEY (product_id)
    REFERENCES product_t(product_id)
);
