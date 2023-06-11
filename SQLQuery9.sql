CREATE TABLE Seat(
	Reserve_Id int NOT NULL,
	Row int NULL,
	Number int NULL

	FOREIGN KEY (Reserve_ID) REFERENCES Reserve(Reserve_ID)
);



