drop table sales;
drop table customers;
drop table shops;
drop table sales_audit;

-- select * from customers;

-- Question 2: Using Triggers to enforce data validity
CREATE OR REPLACE TRIGGER customer_credit_limit_trigger
BEFORE INSERT ON customers
FOR EACH ROW
DECLARE
    my_var INTEGER;
BEGIN
    IF :new.vip = 'N' AND :new.creditlimit > 500 THEN
        raise_application_error(-20101, 'The Credit Limit for non-VIP members must not exceed 500');
    END IF;
    IF :new.vip = 'Y' AND :new.creditlimit > 1000 THEN
        raise_application_error(-20101, 'The Credit Limit for VIP members must not exceed 1000');
    END IF;
END;

INSERT INTO customers VALUES (1002, 'bob', sysdate, 501, 'N', 41);


INSERT INTO customers VALUES (1003, 'jeff', sysdate,1050, 'Y', 41);

INSERT INTO customers VALUES (1002, 'bob', sysdate, 350, 'N', 41);
INSERT INTO customers VALUES (1003, 'jeff', sysdate,975, 'Y', 41);

SELECT *
FROM CUSTOMERS
ORDER BY cust_id DESC;

--- Question 3: Using Triggers to prevent updates
CREATE OR REPLACE TRIGGER shop_country_trigger
BEFORE UPDATE OF country ON shops
FOR EACH ROW
BEGIN
    IF :new.country <> :old.country THEN
        raise_application_error(-20102, 'Updating of shop country is prohibited');
    END IF;
END;


UPDATE shops
SET country = 'ENGLAND'
WHERE shop_id = 1;

SELECT * FROM shops;
-- Question 4: Using Triggers to prevent deletion
CREATE OR REPLACE TRIGGER sales_customer_id_trigger
BEFORE DELETE ON customers
FOR EACH ROW
DECLARE
    customer_sales_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO customer_sales_count FROM  sales WHERE sales.cust_id = :old.cust_id;
    IF customer_sales_count > 0 THEN
        raise_application_error(-20103,:old.cust_id || ' has ' || customer_sales_count || ' entries in the sales table!' );
    END IF;
END;

select * from sales order by cust_id;
select * from customers order by cust_id;

DELETE FROM customers WHERE cust_id=5;

SELECT * FROM sales WHERE cust_id = 3;

-- Questioin 5: Using Triggers after events
CREATE OR REPLACE TRIGGER sales_audit_trigger
AFTER INSERT ON sales
FOR EACH ROW
DECLARE
    user_name VARCHAR(50);
BEGIN
    SELECT user INTO user_name FROM dual;
    INSERT INTO sales_audit VALUES(:new.sales_id, :new.amount, user_name);
END;

SELECT * FROM sales ORDER BY sales_id DESC;
--50000

INSERT INTO sales VALUES (50009, 2, sysdate, 30, 1);

SELECT * FROM sales_audit;

-- Question 6: Create additional trigger to achieve ONE of the following
-- a. Prevent insertion of sales between 11pm and midnight
CREATE OR REPLACE TRIGGER sales_time_trigger
BEFORE INSERT ON sales
DECLARE
    time VARCHAR(20);
BEGIN
    SELECT TO_CHAR(SYSTIMESTAMP, 'HH24:MI:SS') INTO time FROM dual;
    
    IF time >=  '23:00:00' AND time < '00:00:00' THEN
        RAISE_APPLICATION_ERROR(-20011, 'Cannont insert into sales at this time!');
    END IF;
END;

-- SELECT * FROM sales ORDER BY sales_id DESC;

INSERT INTO sales VALUES(50010, 3, sysdate, 23, 7);

-- SELECT TO_CHAR(SYSTIMESTAMP +  INTERVAL '1' HOUR, 'HH24:MI:SS') FROM DUAL;