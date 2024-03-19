--  Wyzwalacz 1
CREATE OR REPLACE TRIGGER increase_stock_quantity
BEFORE INSERT ON Products
FOR EACH ROW
BEGIN
  -- Zwiększa liczbę produktów w magazynie o 1
  :NEW.stock_quantity := :NEW.stock_quantity + 1;
END;
/

-- wywołanie
INSERT INTO Products (product_id, name, description, price, stock_quantity, category_id, supplier_id)
VALUES (5, 'Product E', 'Description for Product E', 9.99, 0, 1, 1);
commit;

-- Wyzwalacz 2 wyzwalacz który po usunięciu z tabeli rekordu z tabeli customers usunie wszystkie dane z nim powiązane
CREATE OR REPLACE TRIGGER delete_related_data
AFTER DELETE ON Customers
FOR EACH ROW
BEGIN
    -- Usuwanie danych z tabeli Orders
    DELETE FROM Orders WHERE customer_id = :OLD.customer_id;

    -- Usuwanie danych z tabeli Order_Items
    DELETE FROM Order_Items WHERE order_id IN (
        SELECT order_id FROM Orders WHERE customer_id = :OLD.customer_id
    );

    -- Usuwanie danych z tabeli Reviews
    DELETE FROM Reviews WHERE customer_id = :OLD.customer_id;

    -- Usuwanie danych z tabeli Wishlist
    DELETE FROM Wishlist WHERE customer_id = :OLD.customer_id;
END;
/

-- Funkcja 1 zlicza liczbę zamówień
CREATE OR REPLACE FUNCTION count_orders RETURN NUMBER IS
  total_orders NUMBER;
BEGIN
  SELECT COUNT(*) INTO total_orders FROM Orders;
  RETURN total_orders;
END;
/

-- wywołanie
DECLARE
  order_count NUMBER;
BEGIN
  order_count := count_orders;
  DBMS_OUTPUT.PUT_LINE('Liczba zamówień: ' || order_count);
END;

-- Funkcja 2 sprawdzająca ilość produktów w magazynie
CREATE OR REPLACE FUNCTION check_stock_quantity(p_product_id IN NUMBER) RETURN VARCHAR2 IS
  v_stock_quantity NUMBER;
  v_message VARCHAR2(200);
BEGIN
  SELECT stock_quantity INTO v_stock_quantity FROM Products WHERE product_id = p_product_id;

  IF v_stock_quantity > 5 THEN
    v_message := 'stock_quantity jest większe od 5 dla produktu o ID ' || p_product_id;
  ELSE
    v_message := 'Należy zwiększyć stock_quantity dla produktu o ID ' || p_product_id;
  END IF;

  RETURN v_message;
END;
/
-- wywołanie
DECLARE
  v_result VARCHAR2(200);
BEGIN
  v_result := check_stock_quantity(1);
  DBMS_OUTPUT.PUT_LINE(v_result);
END;