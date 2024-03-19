CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL ,
    contact_number VARCHAR(20) NOT NULL ,
    address VARCHAR(200) NOT NULL,
    payment_info VARCHAR(200) NOT NULL
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL ,
    order_date DATE NOT NULL ,
    order_status VARCHAR(20) NOT NULL ,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL ,
    product_id INT NOT NULL ,
    quantity INT,
    price DECIMAL(10,2) NOT NULL ,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY NOT NULL ,
    name VARCHAR(100) NOT NULL ,
    description VARCHAR(200),
    price DECIMAL(10,2),
    stock_quantity INT NOT NULL ,
    category_id INT,
    supplier_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY NOT NULL ,
    name VARCHAR(100) NOT NULL ,
    contact_info VARCHAR(200) NOT NULL ,
    address VARCHAR(200)
);

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY NOT NULL ,
    customer_id INT,
    product_id INT NOT NULL ,
    rating INT NOT NULL ,
    review_text VARCHAR(500),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Wishlist (
    wishlist_id INT PRIMARY KEY,
    customer_id INT NOT NULL ,
    product_id INT NOT NULL ,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Coupons (
    coupon_code VARCHAR(20) PRIMARY KEY NOT NULL ,
    discount_amount DECIMAL(10,2),
    expiration_date DATE
);

CREATE TABLE Shipping (
    shipping_method_id INT PRIMARY KEY NOT NULL ,
    name VARCHAR(100),
    estimated_delivery_time INT,
    cost DECIMAL(10,2) NOT NULL
);

CREATE TABLE Payment_Methods (
    payment_method_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL ,
    description VARCHAR(200)
);

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY NOT NULL ,
    name VARCHAR(100) NOT NULL ,
    position VARCHAR(50) NOT NULL ,
    contact_info VARCHAR(200),
    salary DECIMAL(10,2) NOT NULL
);
