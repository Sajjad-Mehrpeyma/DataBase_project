CREATE TABLE Reserve1(
	Phone_Number varchar(10)  NOT NULL,
	Reserve_Id int PRIMARY KEY NOT NULL,
	cost_price int ,
	number_of_seats int,
	Sans_Id int NOT NULL

	FOREIGN KEY (SANS_ID) REFERENCES Sans(SANS_ID)
	FOREIGN KEY (Phone_Number) REFERENCES User(Phone_Number)

);



