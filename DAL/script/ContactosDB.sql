create table Mensajes(
      Id int identity(1,1) primary key,
	  Email varchar(70) ,
	  Nombre varchar(20),
	  Asunto varchar(100) ,
	  Mensaje varchar(250) 
);