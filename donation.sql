CREATE TABLE Tool
(
  tool_id int primary key identity(1,1),
  donorName varchar(50),
  category varchar(50) NOT NULL,
  quality INT NOT NULL,
  dateDonated Date NOT NULL,
  phone int ,
  email varchar(50),
  address varchar(100),
  city_id int foreign key references city(city_id),
  comment text default Null,
  status bit default (0),

);

alter table tool add image varchar(100);

select * from Tool
--drop table Tool 
--drop table Application
--drop table city
--drop table Cash
--drop table contact

CREATE TABLE Application
(
  application_id INT primary key identity(1,1) ,
  applicationDate INT NOT NULL,
  tool_id int foreign key references Tool(tool_id),
  --item_id int foreign key references foodDonations(),
  user_id nvarchar(128) foreign key references AspNetUsers(id),

);
select* from Application
drop table Application

create table Cash(
	coupon_id int primary key identity(1,1),
	donorName varchar(50),
	amount decimal,
	dateDonated date,
	city_id int foreign key references city(city_id),
	store_id int foreign key references coupon_stores(store_id),
	  user_id nvarchar(128) foreign key references AspNetUsers(id),

);

alter table Application add applicationStatus bit default (0);

create table contact(
	name varchar(50),
	email varchar(50),
	message text,
);

--create table foodDonations(
--		item-id int primary key identity(1,1),
--	  donorName varchar(50),
--	  category varchar(50) NOT NULL,
--	  dateDonated Date NOT NULL,
--	  quantity int,
--	  city varchar(50),
--	  status bit default (0),
--);

create table city(
city_id int primary key identity(1,1),
cityName varchar(50),

);

create table coupon_stores(
store_id int primary key identity(1,1),
storeName varchar(50),
);


create table volunteer(
id int identity(1,1),
name varchar(250),
city varchar(50),
adress varchar(50),
phone int,
email varchar(50),
);


