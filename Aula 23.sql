create database catalogo;

create table Filme (
	id int primary key identity,
	nome varchar(60) not null,
	data_lancamanto date null,
	duracao time not null,
);

create table Ator (
	id int primary key identity,
	nome varchar(60) not null,
	sobrenome varchar(60) not null,
);

create table Filme_Ator(
	id int primary key identity,
	id_filme int,
	id_ator int

	constraint fk_filme_id 
	foreign key (id_filme) 
	references Filme(id),

	constraint fk_ator_id 
	foreign key (id_ator) 
	references Ator(id)
);