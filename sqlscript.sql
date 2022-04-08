create table addresses(  
    address_id   int NOT NULL,  
    city        varchar2(50),  
    state        varchar2(50),  
    country        varchar2(50),  
    note        varchar2(1500),  
    constraint PK_ADDRESS_ID primary key (address_id)  
);

create table customers(  
    customer_id number NOT NULL,  
    address_id number,  
    first_name varchar2(50),  
    last_name varchar2(50),  
    phone varchar2(16),  
    note varchar2(1500),  
    constraint PK_CUSTOMER_ID primary key (customer_id),  
    constraint FK_ADDRESS_ID foreign key (address_id)   
      references addresses (address_id)    
);

create table payment(  
    payment_method_id number NOT NULL,  
    payment_name varchar2(100),  
    note varchar2(1500),  
    constraint PK_PAYMENT_METHOD_ID primary key (payment_method_id)  
);

create table goods(   
    good_id number NOT NULL,   
    good_code number,   
    good_name varchar2(100),   
    good_cost number,   
    note varchar2(1500),   
    constraint PK_GOOD_ID primary key (good_id)   
);

create table good_groups(  
    good_group_id number NOT NULL,  
    name varchar(50),  
    taxrate float,  
    note varchar2(1500),  
    constraint PK_GOOD_GROUP_ID primary key (good_group_id)  
);

create table factors(   
    factor_id number NOT NULL,   
    customer_id number,   
    payment_method_id number,   
    factor_date date default SYSDATE,   
    note varchar2(1500),   
    constraint PK_FACTOR_ID primary key (factor_id),   
    constraint FK_CUSTOMER_ID foreign key (customer_id)    
      references customers (customer_id),   
    constraint FK_PAYMENT_METHOD_ID foreign key (payment_method_id)    
      references payment (payment_method_id)    
);

create table factor_items(  
    factor_id number,  
    good_id number,  
    quantity number,  
    price number,  
    note varchar2(1500),  
    constraint FK_FACTOR_ID foreign key (factor_id)   
      references factors (factor_id),  
    constraint FK_GOOD_ID foreign key (good_id)   
      references goods (good_id)   
);

insert into addresses (address_id,city,state,country) values (0,'Dubai',null,'UAE');

insert into addresses (address_id,city,state,country) values (1,'Muscat',null,'Oman');

insert into addresses (address_id,city,state,country) values (2,'Nicosia',null,'Cyprus');

insert into addresses (address_id,city,state,country) values (3,'Ankara',null,'Turkey');

insert into addresses (address_id,city,state,country) values (4,'Istanbul',null,'Turkey');

insert into addresses (address_id,city,state,country) values (5,'Famagusta',null,'Cyprus');

insert into addresses (address_id,city,state,country) values (6,'London',null,'UK');

insert into addresses (address_id,city,state,country) values (7,'Glasgow',null,'UK');

insert into addresses (address_id,city,state,country) values (8,'Sharjah',null,'UAE');

insert into addresses (address_id,city,state,country) values (9,'Kuwait City',null,'Kuwait');

insert into addresses (address_id,city,state,country) values (10,'Bucharest',null,'Romania');

insert into addresses (address_id,city,state,country) values (11,'New York','New York','USA');

insert into addresses (address_id,city,state,country) values (12,'San Fransisco','Calfornia','USA');

insert into addresses (address_id,city,state,country) values (13,'San Diego','Calfornia','USA');

insert into addresses (address_id,city,state,country) values (14,'Los Angeles','Calfornia','USA');

select * from addresses 
;

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (0,3,'Mohamad','Kaddoura','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (1,10,'Ismat','Maurice','+404558789951');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (2,4,'John','Stewart','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone) 
values (3,1,'Hank','Henshaw','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (4,2,'Clark','Kent','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (5,0,'Bruce','Wayne','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (6,9,'Sheldon','Rockshaw','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (7,8,'Mariana','Anthony','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (8,6,'William','Smith','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (9,7,'Mike','Wazowski','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (10,11,'Freddy','Mercury','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (11,3,'Paul','Mccartney','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (12,13,'Idris','Elba','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (13,12,'Angelina','Jolie','+905338896660');

insert into customers (customer_id,address_id,first_name,last_name,phone)  
values (14,5,'Fernando','Ermes','+905338896660');

insert into payment (payment_method_id,payment_name) values (0,'Cash');

insert into payment (payment_method_id,payment_name) values (1,'Credit Card');

insert into goods (good_id, good_code, good_name, good_cost) values  
(0,117,'Apple',3);

insert into goods (good_id, good_code, good_name, good_cost) values  
(1,130,'Banana',2);

insert into goods (good_id, good_code, good_name, good_cost) values  
(2,63,'Chicken',20);

insert into goods (good_id, good_code, good_name, good_cost) values  
(3,43,'Snickers',2);

insert into goods (good_id, good_code, good_name, good_cost) values  
(4,88,'Grape Juice',8);

insert into goods (good_id, good_code, good_name, good_cost) values  
(5,96,'Honey',15);

insert into goods (good_id, good_code, good_name, good_cost) values  
(6,127,'Milk',4);

insert into goods (good_id, good_code, good_name, good_cost) values  
(7,313,'Fish',26);

insert into goods (good_id, good_code, good_name, good_cost) values  
(8,314,'Pickles',11);

insert into goods (good_id, good_code, good_name, good_cost) values  
(9,223,'Cheese',17);

insert into goods (good_id, good_code, good_name, good_cost) values  
(10,113,'Flour',5);

insert into goods (good_id, good_code, good_name, good_cost) values  
(11,49,'Indomi',2);

insert into goods (good_id, good_code, good_name, good_cost) values  
(12,18,'Twix',3);

insert into goods (good_id, good_code, good_name, good_cost) values  
(13,31,'Bread',2);

insert into goods (good_id, good_code, good_name, good_cost) values  
(14,332,'Yogurt',7);

select * from goods;

insert into good_groups (good_group_id,name,taxrate) values 
(0,'Fruits & Vegetables', 1.05);

insert into good_groups (good_group_id,name,taxrate) values 
(1,'Poultry', 1.2);

insert into good_groups (good_group_id,name,taxrate) values 
(2,'Drinks', 1.1);

insert into good_groups (good_group_id,name,taxrate) values 
(3,'Dry products', 1.00);

insert into good_groups (good_group_id,name,taxrate) values 
(4,'Dairy products', 1.15);

insert into good_groups (good_group_id,name,taxrate) values 
(5,'Other', 1.07);

select * from payment;

select * from good_groups;

insert into factors (factor_id,customer_id,payment_method_id) values 
(0,0,1);

insert into factors (factor_id,customer_id,payment_method_id) values 
(1,1,1);

insert into factors (factor_id,customer_id,payment_method_id) values 
(2,2,0);

insert into factors (factor_id,customer_id,payment_method_id) values 
(3,3,1);

insert into factors (factor_id,customer_id,payment_method_id) values 
(4,4,0);

insert into factors (factor_id,customer_id,payment_method_id) values 
(5,5,0);

insert into factors (factor_id,customer_id,payment_method_id) values 
(6,6,1);

insert into factors (factor_id,customer_id,payment_method_id) values 
(7,7,1);

insert into factors (factor_id,customer_id,payment_method_id) values 
(8,8,0);

insert into factors (factor_id,customer_id,payment_method_id) values 
(9,9,1);

insert into factors (factor_id,customer_id,payment_method_id) values 
(10,10,1);

insert into factors (factor_id,customer_id,payment_method_id) values 
(11,11,1);

insert into factors (factor_id,customer_id,payment_method_id) values 
(12,12,0);

insert into factors (factor_id,customer_id,payment_method_id) values 
(13,13,0);

insert into factors (factor_id,customer_id,payment_method_id) values 
(14,14,0);

select * from good_groups;

select * from good_groups;

select * from goods;

ALTER TABLE goods RENAME COLUMN good_code TO good_group_code;

select * from goods 
;

update goods set good_group_code = 0 where good_id = 0;

select * from goods 
 
;

select * from good_groups 
;

select * from goods 
;

update goods set good_group_code = 0 where good_id = 1;

update goods set good_group_code = 1 where good_id = 2 or good_id = 7;

update goods set good_group_code = 2 where good_id = 4;

update goods set good_group_code = 3 where good_id = 10 or good_id = 13 or good_id = 11;

update goods set good_group_code = 4 where good_id = 14 or good_id = 9 or good_id = 6;

update goods set good_group_code = 5 where good_group_code > 5;

select * from goods;

select * from factors;

select * from goods 
;

insert into factor_items (factor_id, good_id, quantity) values (0,2,1);

insert into factor_items (factor_id, good_id, quantity) values (0,5,1);

insert into factor_items (factor_id, good_id, quantity) values (0,4,2);

insert into factor_items (factor_id, good_id, quantity) values (1,1,5);

insert into factor_items (factor_id, good_id, quantity) values (1,4,1);

insert into factor_items (factor_id, good_id, quantity) values (1,9,1);

insert into factor_items (factor_id, good_id, quantity) values (1,14,2);

insert into factor_items (factor_id, good_id, quantity) values (2,2,2);

insert into factor_items (factor_id, good_id, quantity) values (2,9,2);

insert into factor_items (factor_id, good_id, quantity) values (3,3,3);

insert into factor_items (factor_id, good_id, quantity) values (3,11,4);

insert into factor_items (factor_id, good_id, quantity) values (3,12,2);

insert into factor_items (factor_id, good_id, quantity) values (4,9,1);

insert into factor_items (factor_id, good_id, quantity) values (4,10,2);

insert into factor_items (factor_id, good_id, quantity) values (4,14,3);

insert into factor_items (factor_id, good_id, quantity) values (4,5,1);

insert into factor_items (factor_id, good_id, quantity) values (5,0,10);

insert into factor_items (factor_id, good_id, quantity) values (5,1,10);

insert into factor_items (factor_id, good_id, quantity) values (6,13,5);

insert into factor_items (factor_id, good_id, quantity) values (6,14,2);

insert into factor_items (factor_id, good_id, quantity) values (6,6,3);

insert into factor_items (factor_id, good_id, quantity) values (7,5,1);

insert into factor_items (factor_id, good_id, quantity) values (7,8,2);

insert into factor_items (factor_id, good_id, quantity) values (7,10,1);

insert into factor_items (factor_id, good_id, quantity) values (7,3,1);

insert into factor_items (factor_id, good_id, quantity) values (8,2,3);

insert into factor_items (factor_id, good_id, quantity) values (9,0,3);

insert into factor_items (factor_id, good_id, quantity) values (9,9,1);

insert into factor_items (factor_id, good_id, quantity) values (10,2,1);

insert into factor_items (factor_id, good_id, quantity) values (10,3,2);

insert into factor_items (factor_id, good_id, quantity) values (10,13,1);

insert into factor_items (factor_id, good_id, quantity) values (10,14,1);

insert into factor_items (factor_id, good_id, quantity) values (10,11,5);

insert into factor_items (factor_id, good_id, quantity) values (11,6,2);

insert into factor_items (factor_id, good_id, quantity) values (11,5,1);

insert into factor_items (factor_id, good_id, quantity) values (11,13,2);

insert into factor_items (factor_id, good_id, quantity) values (12,4,1);

insert into factor_items (factor_id, good_id, quantity) values (13,13,5);

insert into factor_items (factor_id, good_id, quantity) values (13,9,2);

insert into factor_items (factor_id, good_id, quantity) values (14,2,1);

insert into factor_items (factor_id, good_id, quantity) values (14,8,2);

insert into factor_items (factor_id, good_id, quantity) values (14,12,4);

select * from factor_items;

UPDATE factor_items t1 
   SET (price) = (SELECT t1.quantity * t2.good_cost * t3.taxrate 
                         FROM goods t2 join good_groups t3 on t2.good_group_code = t3.good_group_id 
                         where t1.good_id = t2.good_id);

select * from factor_items;

select count(*) from factors;

select name from  
	( 
	select name,count(customers.customer_id) as counts from customers  
	join factors on customers.customer_id = factors.customer_id  
	join factor_items on factors.factor_id = factor_items.factor_id 
	join goods on factor_items.good_id = goods.good_id 
	join good_groups on goods.good_group_code = good_groups.good_group_id 
	group by name 
	order by counts desc 
	) 
where rownum=1;

select payment_name from 
	( 
	select count(factor_id) as counts, payment_name from payment  
	join factors on factors.payment_method_id = payment.payment_method_id 
	group by payment.payment_name 
	order by counts desc 
	) 
where rownum=1;

select good_name, good_id from  
    ( 
    select goods.good_id, goods.good_name, sum(quantity) from factor_items 
    join goods on factor_items.good_id = goods.good_id 
    group by (goods.good_name,goods.good_id) 
    having sum(quantity) > 2 
    );

select name,count(distinct factors.factor_id) as number_of_factors  
from factors  
join factor_items on factors.factor_id = factor_items.factor_id 
join goods on factor_items.good_id = goods.good_id 
join good_groups on goods.good_group_code = good_groups.good_group_id 
group by name 
order by number_of_factors desc;

select customers.customer_id,first_name,last_name, count(factor_id) as no_of_factors  
from customers join factors on customers.customer_id = factors.customer_id  
group by (customers.customer_id,first_name,last_name);

select good_name, sums as amount from  
    ( 
    select goods.good_name, sum(quantity) as sums from factor_items 
    join goods on factor_items.good_id = goods.good_id 
    group by (goods.good_name) 
    order by sums 
    );

select factors.factor_id,avg(quantity) as average_quantity 
from factors  
join factor_items on factors.factor_id = factor_items.factor_id 
join goods on factor_items.good_id = goods.good_id 
group by factors.factor_id;

select factors.factor_id,avg(price) as average_price 
from factors  
join factor_items on factors.factor_id = factor_items.factor_id 
join goods on factor_items.good_id = goods.good_id 
group by factors.factor_id;

select * from 
    ( 
    select factors.factor_id,sum(price) as sum_price 
    from factors  
    join factor_items on factors.factor_id = factor_items.factor_id 
    join goods on factor_items.good_id = goods.good_id 
    group by factors.factor_id 
    order by sum_price desc 
    ) 
where rownum=1;

select city from 
	( 
	select city,count(good_name) as counts from addresses 
	join customers on addresses.address_id = customers.address_id  
	join factors on customers.customer_id = factors.customer_id  
	join factor_items on factors.factor_id = factor_items.factor_id 
	join goods on factor_items.good_id = goods.good_id 
	join good_groups on goods.good_group_code = good_groups.good_group_id 
	group by city 
	order by counts desc 
	) 
where rownum=1;

select count(factor_id) as amount_used, payment_name from payment  
join factors on factors.payment_method_id = payment.payment_method_id 
group by payment.payment_name 
order by amount_used desc;

CREATE OR REPLACE TRIGGER delete_goods 
BEFORE DELETE ON goods 
FOR EACH ROW 
BEGIN 
  delete from factor_items where factor_items.good_id = :old.good_id; 
END;


CREATE OR REPLACE TRIGGER update_goods 
AFTER UPDATE ON goods 
BEGIN 
  UPDATE factor_items t1  
   SET (price) = (SELECT t1.quantity * t2.good_cost * t3.taxrate  
                         FROM goods t2 join good_groups t3 on t2.good_group_code = t3.good_group_id  
                         where t1.good_id = t2.good_id); 
END;


