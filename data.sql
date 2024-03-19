INSERT INTO Customers (CUSTOMER_ID, NAME, CONTACT_NUMBER, ADDRESS, PAYMENT_INFO) VALUES(1, 'John Smith', '123456789', '123 Main St, Anytown', 'Credit Card');
INSERT INTO Customers (CUSTOMER_ID, NAME, CONTACT_NUMBER, ADDRESS, PAYMENT_INFO) VALUES(2, 'Jane Doe', '987654321', '456 Elm St, Otherville', 'PayPal');
INSERT INTO Customers (CUSTOMER_ID, NAME, CONTACT_NUMBER, ADDRESS, PAYMENT_INFO) VALUES(3, 'Michael Johnson', '555555555', '789 Oak St, Anothercity', 'Credit Card');
INSERT INTO Customers (CUSTOMER_ID, NAME, CONTACT_NUMBER, ADDRESS, PAYMENT_INFO) VALUES(4, 'Jan Banach', '666666666', '777 Oak St, Anothercity', 'Credit Card');
commit;

INSERT INTO Orders (order_id, customer_id, order_date, order_status) VALUES (1, 1, SYSDATE, 'Completed');
INSERT INTO Orders (order_id, customer_id, order_date, order_status) VALUES (2, 2, SYSDATE, 'Pending');
INSERT INTO Orders (order_id, customer_id, order_date, order_status) VALUES (3, 3, SYSDATE, 'Processing');
INSERT INTO Orders (order_id, customer_id, order_date, order_status) VALUES (4, 4, SYSDATE, 'Completed');
COMMIT;

INSERT INTO ORDER_ITEMS (ORDER_ITEM_ID, ORDER_ID, PRODUCT_ID, QUANTITY, PRICE) VALUES(1, 1, 1, 2, 19.99);
INSERT INTO ORDER_ITEMS (ORDER_ITEM_ID, ORDER_ID, PRODUCT_ID, QUANTITY, PRICE) VALUES(2, 1, 3, 1, 9.99);
INSERT INTO ORDER_ITEMS (ORDER_ITEM_ID, ORDER_ID, PRODUCT_ID, QUANTITY, PRICE) VALUES(3, 2, 2, 3, 14.99);
INSERT INTO ORDER_ITEMS (ORDER_ITEM_ID, ORDER_ID, PRODUCT_ID, QUANTITY, PRICE) VALUES(4, 3, 4, 1, 24.99);
INSERT INTO ORDER_ITEMS (ORDER_ITEM_ID, ORDER_ID, PRODUCT_ID, QUANTITY, PRICE) VALUES(5, 4, 1, 2, 19.99);
INSERT INTO ORDER_ITEMS (ORDER_ITEM_ID, ORDER_ID, PRODUCT_ID, QUANTITY, PRICE) VALUES(6, 4, 3, 1, 9.99);
commit;


INSERT INTO Products (product_id, name, description, price, stock_quantity, category_id, supplier_id) VALUES(1, 'Product A', 'Description for Product A', 19.99, 10, 1, 1);
INSERT INTO Products (product_id, name, description, price, stock_quantity, category_id, supplier_id) VALUES(2, 'Product B', 'Description for Product B', 14.99, 5, 2, 2);
INSERT INTO Products (product_id, name, description, price, stock_quantity, category_id, supplier_id) VALUES(3, 'Product C', 'Description for Product C', 9.99, 8, 1, 1);
INSERT INTO Products (product_id, name, description, price, stock_quantity, category_id, supplier_id) VALUES(4, 'Product D', 'Description for Product D', 24.99, 3, 2, 2);
commit;


INSERT INTO Categories (category_id, category_name) VALUES(1, 'Category 1');
INSERT INTO Categories (category_id, category_name) VALUES(2, 'Category 2');
commit;


INSERT INTO Suppliers (supplier_id, name, contact_info, address) VALUES(1, 'Supplier 1', 'Contact info for Supplier 1', '123 Supplier St, Anytown');
INSERT INTO Suppliers (supplier_id, name, contact_info, address) VALUES(2, 'Supplier 2', 'Contact info for Supplier 2', '456 Supplier St, Otherville');
commit;


INSERT INTO Reviews (review_id, customer_id, product_id, rating, review_text) VALUES(1, 1, 1, 4, 'Great product!');
INSERT INTO Reviews (review_id, customer_id, product_id, rating, review_text) VALUES(2, 1, 2, 5, 'Excellent quality.');
INSERT INTO Reviews (review_id, customer_id, product_id, rating, review_text) VALUES(3, 2, 1, 3, 'Average product.');
INSERT INTO Reviews (review_id, customer_id, product_id, rating, review_text) VALUES(4, 3, 3, 4, 'Very satisfied.');
commit;


INSERT INTO Wishlist (wishlist_id, customer_id, product_id) VALUES(1, 1, 2);
INSERT INTO Wishlist (wishlist_id, customer_id, product_id) VALUES(2, 2, 1);
INSERT INTO Wishlist (wishlist_id, customer_id, product_id) VALUES(3, 2, 3);
INSERT INTO Wishlist (wishlist_id, customer_id, product_id) VALUES(4, 3, 4);
commit;


INSERT INTO Coupons (coupon_code, discount_amount, expiration_date) VALUES('SALE20', 20.00, '2023-06-30');
INSERT INTO Coupons (coupon_code, discount_amount, expiration_date) VALUES('SPRING10', 10.00, '2023-05-31');
commit;


INSERT INTO Shipping (shipping_method_id, name, estimated_delivery_time, cost) VALUES(1, 'Standard Shipping', 5, 4.99);
INSERT INTO Shipping (shipping_method_id, name, estimated_delivery_time, cost) VALUES(2, 'Express Shipping', 2, 9.99);
commit;


INSERT INTO Payment_Methods (payment_method_id, name, description) VALUES(1, 'Credit Card', 'Pay with a credit card.');
INSERT INTO Payment_Methods (payment_method_id, name, description) VALUES(2, 'PayPal', 'Pay with PayPal.');
commit;


INSERT INTO Employee (employee_id, name, position, contact_info, salary) VALUES(1, 'John Johnson', 'Manager', '111111111', 5000.00);
INSERT INTO Employee (employee_id, name, position, contact_info, salary) VALUES(2, 'Sarah Smith', 'Sales Associate', '222222222', 3000.00);
INSERT INTO Employee (employee_id, name, position, contact_info, salary) VALUES(3, 'David Davis', 'Warehouse Worker', '333333333', 2500.00);
commit;

