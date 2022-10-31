create database projecto;
use projecto;

create table grado(
	IdGrado int primary key not null,
	Año int,
	Seccion varchar(1)
);

create table Docente(
	IdDocente int primary key not null,
	IdGrado int foreign key references grado not null,
	Seccion int
)

create table alumno(
	IdAlumno int primary key not null,
	IdGrado int foreign key references grado(IdGrado),
	Seccion int
);

create table Materia(
	IdMateria int primary key not null,
	IdDocente int foreign key references Docente(IdDocente),
	Nombre varchar(5)
);

create table Notas(
	IdNotas int primary key,
	IdMateria int foreign key references Materia(IdMateria)
);

create table DesgloceNotas(
	IdNotas int foreign key references Notas(IdNotas),
	IdMateria int foreign key references Materia(IdMateria),
	IdAlumno int foreign key references Alumno(IdAlumno)
);