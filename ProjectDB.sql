create database Kitchen;

use Kitchen;

CREATE TABLE User (
    UserID int not null auto_increment PRIMARY KEY,
    FirstName VARCHAR(25) NOT NULL,
   LastName  VARCHAR(25) NOT NULL,
   DateOfBirth DateTime NOT NULL,
   Gender VARCHAR(25) NOT NULL,
   Email VARCHAR(30) UNIQUE NOT NULL,
  Phone VARCHAR(25) NOT NULL
);
desc User;

Create table Admin(
	AdminName varchar(10),
    AdminPass Varchar(10)
);

Create table KitchenLessons(
	UserID int,
	UploadVideo blob,
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    Videos blob
);
desc KitchenLessons;

Create table FoodPhotoGraphy(
	UserID int,
	UploadPhotos blob,
	FOREIGN KEY (UserId) REFERENCES User(UserId),
	Photos blob
);
desc FoodPhotoGraphy;

create table Categories(
	Appetizers varchar(25),
    Dessert varchar(25),
    Veg varchar(25),
    NonVeg varchar(25)
);
desc Categories;

create table MealPlanning(
	Breakfast varchar(25),
    Lunch varchar(25),
    Dinner varchar(25),
    Snaks varchar(25)
);

create table RecipePost(
	RecipieName varchar(25),
    Ingridients varchar(25),
    Instruction varchar(100),
    Nutritions varchar(25),
    UserID int,
    FOREIGN KEY (UserId) REFERENCES User(UserId)
);

create table BookShelf(
	BookId int not null auto_increment PRIMARY KEY,
    BookName varchar(20),
    BookDescription varchar(100),
    BookPrice int
);

 create table Payment(
	CaredHolderName varchar(50),
    CardNo int,
    CVV int,
    UserID int,
    FOREIGN KEY (UserId) REFERENCES User(UserId),
    Amount int
);
    
CREATE TABLE Feedback(
FeedbackID  INT  Auto_Increment PRIMARY KEY,
UserID int NOT NULL,
FOREIGN KEY (UserId) REFERENCES User(UserId),
UserName VARCHAR(10) NOT NULL,
Suggetion VARCHAR(100) NOT NULL
);


