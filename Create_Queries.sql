CREATE TABLE movie(
	ID INT primary key,
	title varchar(30) not null,
	genre varchar(20),
	movie_group varchar(20),
	length  varchar(10),
	director varchar(20),
	movie_type varchar(20),
	movie_summary varchar(250),
	age varchar(20),
	sold_tickets bigint
);

CREATE TABLE top_three_actors(
	film_id int,
	actor1 varchar(20),
	actor2 varchar(20),
	actor3 varchar(20),
    
	FOREIGN KEY (film_id) REFERENCES movie(ID)
);

CREATE TABLE movie_language
(
	film_id int,
	movoe_language varchar(20),

	foreign key (film_id) references movie(ID)
);

CREATE TABLE users
(
	phone_number  varchar(20) primary key not null
);

CREATE TABLE real_customer
(
	first_name varchar(20),
	family_name varchar(30),
	phone_number varchar(20),
	birth_date datetime,
	gender varchar(8),
	favorite_genre varchar(20),
	age_group varchar(20),
	age int
);

CREATE TABLE legal_user(

	phone_number int,
	company_name varchar(30),
	foreign key (phone_number) references users(phone_number)
);

CREATE TABLE purchased_tickets(

	phone_number int,
	reserve_id int,
	foreign key(phone_number) references users(phone_number)
);

create table sans_id
(
	phone_number int,

	foreign key(phone_number) references users(phone_number)
);


CREATE TABLE Reserve1(
	Phone_Number varchar(10)  NOT NULL,
	Reserve_Id int PRIMARY KEY NOT NULL,
	cost_price int ,
	number_of_seats int,
	Sans_Id int NOT NULL,

	FOREIGN KEY (SANS_ID) REFERENCES Sans(SANS_ID),
	FOREIGN KEY (Phone_Number) REFERENCES User(Phone_Number)

);

CREATE TABLE Cinema(
	Cinema_Id int PRIMARY KEY  NOT NULL,
	name varchar(20) ,
	number_of_saloons int ,
	Cinema_Class char(1) ,
	Parking bit ,
	Phone_Number varchar(20) ,
	District varchar(20) ,
	Avenue varchar(20) ,
	Street varchar(20) ,
	Other_Explanation varchar(20)
	);

CREATE TABLE Sans(
	Sans_Id int PRIMARY KEY  NOT NULL,
	Cinema_Id int NOT NULL,
	Saloon_Name varchar(20) ,
	Saloon_capacity int ,
	Seat_price int ,
	datetime datetime ,
	Empty_seats int ,
	FOREIGN KEY (Cinema_ID) REFERENCES Cinema(Cinema_Id)
	);

CREATE TABLE Seat(
	Reserve_Id int NOT NULL,
	Row int NULL,
	Number int NULL,

	FOREIGN KEY (Reserve_ID) REFERENCES Reserve(Reserve_ID)
);

CREATE TABLE Reserve_Movie1(
	Film_Id int NOT NULL,
	Reserve_Id int NOT NULL,

	FOREIGN KEY (Film_Id) REFERENCES Movie(Id),
	FOREIGN KEY (Reserve_Id) REFERENCES Reserve(Reserve_Id)
);