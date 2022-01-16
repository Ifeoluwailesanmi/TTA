Create database Food;

Use Food;
-- table 1 = Lunch_details
Create table Lunch_details (
Flowers VARCHAR (5) NOT NULL, 
Table_number INT NOT NULL, 
Table_cover VARCHAR (10) NOT NULL, 
Customer_name VARCHAR (10) NOT NULL, 
Starter VARCHAR (20), 
Food VARCHAR (15) NOT NULL, 
Fruit VARCHAR (15), 
Drink VARCHAR (15) NOT NULL, 
Dessert VARCHAR (15), 
Waiter_name VARCHAR (10) NOT NULL, 
Left_over VARCHAR (5) NOT NULL,
Primary Key (Customer_name),
Unique (Table_number)
);

Explain Lunch_details;
drop table Lunch_details;

Create table Lunch_details (
Flowers VARCHAR (5) NOT NULL, 
Table_number INT NOT NULL, 
Table_cover VARCHAR (10) NOT NULL, 
Customer_name VARCHAR (10) NOT NULL, 
Starter VARCHAR (20), 
Food VARCHAR (15) NOT NULL, 
Fruit VARCHAR (15), 
Drink VARCHAR (15) NOT NULL, 
Dessert VARCHAR (15), 
Waiter_name VARCHAR (10) NOT NULL, 
Left_over VARCHAR (5) NOT NULL,
Primary Key (Customer_name),
Unique (Table_number)
);

Explain Lunch_details;

Insert into Lunch_details (flowers, table_number, table_cover, customer_name, starter, food, fruit, drink, dessert, waiter_name, Left_over)
Values ('yes', '5', 'blue', 'Jess', 'samosa', 'white_rice', 'strawberry', 'water', 'cake', 'Ann', 'No'),
('yes', '2', 'yellow', 'Brad', 'springrolls', 'sandwiches', 'apple', 'wine', 'yoghurt', 'Luke', 'Yes'),
('no', '6', 'green', 'Tam', 'pie', 'friedrice', 'lemon', 'tea', 'mousse', 'Nick', 'Yes'),
('yes', '3', 'grey', 'Dre', 'puff_puff', 'burger', 'orange', 'coffee', 'oreos', 'Jan', 'No'),
('no', '1', 'black', 'Lois', 'sausages', 'turkey_stew', 'mango', 'red_wine', 'chocolates', 'Bola', 'No'),
('no', '7', 'pink', 'Ada', 'prawns', 'wrap', 'pineapple', 'ginger_tea', 'coleslaw', 'Ben', 'Yes');

Select * from Lunch_details;

-- table 2 = Breakfast_details
Create table Breakfast_details (
Restaurant_name VARCHAR(20) NOT NULL,
Table_type VARCHAR (10) NOT NULL, 
Table_size INT NOT NULL, 
Customer_name VARCHAR (10) NOT NULL, 
Duration VARCHAR (15) NOT NULL,
Primary key (customer_name),
Unique (restaurant_name)
);

Explain Breakfast_details;

Insert into Breakfast_details (restaurant_name, table_type, table_size, customer_name, duration)
Values ('Orbit', 'round', '4', 'Brad', '30minutes'),
('Pinkies', 'square', '2', 'Rose', '40minutes'),
('Burgers', 'round', '5', 'Andrew', '25minutes'),
('Eaters', 'oblong', '10', 'Lois', '33minutes'),
('Spicies', 'rectangle', '8', 'Paul', '18minutes');

Select * from Breakfast_details;

Insert into Breakfast_details (restaurant_name, table_type, table_size, customer_name, duration)
Values ('KFC', 'square', '6', 'Temi', '21minutes');

Select * from Breakfast_details;

Update Breakfast_details
Set table_size = '3'
Where customer_name = 'Lois';

Select * from Breakfast_details;

Delete from Breakfast_details
Where customer_name = 'Temi';

Select * from Breakfast_details;

drop table Breakfast_details;

Create table Breakfast_details (
Restaurant_name VARCHAR(20) NOT NULL,
Table_type VARCHAR (10) NOT NULL, 
Table_size INT NOT NULL, 
Customer_name VARCHAR (10) NOT NULL, 
Duration VARCHAR (15) NOT NULL,
Primary key (table_size),
Unique (restaurant_name)
);

Explain Breakfast_details;

Insert into Breakfast_details (restaurant_name, table_type, table_size, customer_name, duration)
Values ('Orbit', 'round', '4', 'Brad', '30minutes'),
('Pinkies', 'square', '2', 'Rose', '40minutes'),
('Burgers', 'round', '5', 'Andrew', '25minutes'),
('Eaters', 'oblong', '10', 'Lois', '33minutes'),
('Spicies', 'rectangle', '8', 'Paul', '18minutes');

Select * from Breakfast_details;

-- Joining tables
Select Lunch_details.Customer_name, Breakfast_details.restaurant_name
From Lunch_details
Inner Join Breakfast_details
On Lunch_details.Customer_name = Breakfast_details.Customer_name;

Select Lunch_details.Customer_name, Breakfast_details.restaurant_name
From Lunch_details
Left Join Breakfast_details
On Lunch_details.Customer_name = Breakfast_details.Customer_name;

-- simple query, which customers ate breakfast at Orbit?

Select * from Lunch_details, Breakfast_details
Where Lunch_details.Customer_name = Breakfast_details.Customer_name And Breakfast_details.Restaurant_name = "Orbit";

-- which customers ate breakfast as a round table?

Select * from Lunch_details, Breakfast_details
Where Lunch_details.Customer_name = Breakfast_details.Customer_name And Breakfast_details.table_type = "round";

-- complex query
Select Lunch_details.Customer_name, Breakfast_details.restaurant_name
From Lunch_details
Right Join Breakfast_details
On Lunch_details.Customer_name = Breakfast_details.Customer_name;

Select * from Lunch_details, Breakfast_details
where Lunch_details.Customer_name = Breakfast_details.Customer_name and Lunch_details.table_cover = "black";

-- retrieve all data from Breakfast table in ascending order
Use Food;
Select * from Breakfast_details order by table_size;

-- Filter data using comparison operators
Select * from Lunch_details
where table_number between 0 and 4;