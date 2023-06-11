CREATE TABLE Sans(
	Sans_Id int PRIMARY KEY  NOT NULL,
	Cinema_Id int NOT NULL,
	Saloon_Name varchar(20) ,
	Saloon_capacity int ,
	Seat_price int ,
	[datetime] datetime ,
	Empty_seats int ,
	FOREIGN KEY (Cinema_ID) REFERENCES Cinema(Cinema_Id)
	);



