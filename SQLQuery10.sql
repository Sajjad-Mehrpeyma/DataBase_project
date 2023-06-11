CREATE TABLE Reserve_Movie1(
	Film_Id int NOT NULL,
	Reserve_Id int NOT NULL

	FOREIGN KEY (Film_Id) REFERENCES Movie(Id)
	FOREIGN KEY (Reserve_Id) REFERENCES Reserve(Reserve_Id)
);



