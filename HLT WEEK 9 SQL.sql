drop database footwears;
create database footwears;

use footwears;

create table footwears_data (
Shoe_type varchar (15) not null, 
Brand varchar (15) not null, 
Colour varchar (10), 
Price int not null, 
Size decimal (2,1) not null,
Primary Key (Shoe_type),
Unique (brand)
);

Explain footwears_data;

Alter table footwears_data
modify Price varchar (5) not null;

Explain footwears_data;

Insert into footwears_data (Shoe_type, Brand, Colour, Price, Size) 
values ('Boots', 'Adidas', 'Black', '£470', '8'),
('Heels', 'Kurt Geiger', 'Red', '£105', '6.5'),
('Flip-flops', 'Boohoo', 'Yellow', '£33', '5'), 
('Slippers', 'Next', 'Grey', '£14', '7'),
('Sandals', 'George', 'Brown', '£28', '6'),
('Trainers', 'Reebok', 'Black', '£261', '9'),
('Wedges', 'Sketchers', 'Orange', '£73', '5');

Select * from footwears_data;