USE SpartansDB

CREATE TABLE [Spartans Table] 
(
	SpartanID INT PRIMARY KEY IDENTITY,
	Title VARCHAR(10),
	FirstName VARCHAR(50),
	LastName VARCHAR(100),
	University VARCHAR(200),
	Course VARCHAR (200),
	Grade VARCHAR (20)
)