CREATE TABLE Users
(
	IdUser int primary key identity(1,1),
	[Name] varchar(100) not null,
	Email varchar(100) not null,
	PasswordHash varchar(50) not null,
);

create table Rol
(
	IdRol int primary key identity(1,1),
	[Name] varchar(25) not null,
	IdUser int,
	foreign key (IdUser) references Users(IdUser)
)

create table Task
(
	IdTask int primary key identity(1,1),
	Title varchar(100) not null,
	[Description] varchar(MAX),
	DueDate datetime,
	IsCompleted bit default 0,
	IdUser int,
	CreatedAt datetime default getdate(),
	UpdatedAt datetime default getdate(),
	foreign key(IdUser) references Users(IdUser)
)

