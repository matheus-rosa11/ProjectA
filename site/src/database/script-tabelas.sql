-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
CREATE DATABASE acquatec;

USE acquatec;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

create table aquario (
/* em nossa regra de negócio, um aquario tem apenas um sensor */
	id INT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(300)
);

/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

create table medida (
	id INT PRIMARY KEY AUTO_INCREMENT,
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT,
	FOREIGN KEY (fk_aquario) REFERENCES aquario(id)
);

insert into artista(nomeArtista, imgAlbum) values
	('The Beatles', 'https://i.discogs.com/hjWXIS3HPxmW-XsWlmqznmmGR5FGsL-scfwWFgxL4yU/rs:fit/g:sm/q:90/h:562/w:567/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTgyNzMw/LTEzMTk1MzIzMzEu/anBlZw.jpeg'),
	('Ed Sheeran', 'https://i.discogs.com/iLcqGPjykDh1s4WCnPEWpD-VyvrpLBhWsVGq09tWF14/rs:fit/g:sm/q:90/h:400/w:400/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTU4MzA4/MDYtMTQwMzg5NDU5/MS01NjA5LmpwZWc.jpeg'),
	('Shawn Mendes', 'https://i.discogs.com/iMK0m5hrXd5dnrZv6UMF267DwSTyR42zfyR5mfDayWM/rs:fit/g:sm/q:90/h:546/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyMTg1/ODU3LTE2MTk3Njgw/MDEtNTk0My5qcGVn.jpeg'),
	('Billie Eilish', 'https://i.discogs.com/fuqdnfhlfcknjJ2BhWw1b2Y9d3Lo5AtFqeTQfGPjuRc/rs:fit/g:sm/q:90/h:537/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE5Njkz/OTMzLTE2Mjg5ODAx/NDItMjM2MC5qcGVn.jpeg'),
	('Post Malone', 'https://i.discogs.com/hPsU-pkwR8d2Jjj9mDmlQJyBQfKIu3rPeon32xY4H2c/rs:fit/g:sm/q:90/h:695/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTQwMTY0/MzQtMTU0NjY2MTcz/Mi0zMjI4LmpwZWc.jpeg'),
	('Justin Bieber', 'https://i.discogs.com/MkaVNDn2huuA2XqWDRQyLH3jjML7DiXzuzZo_lOfABo/rs:fit/g:sm/q:90/h:701/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTE2MDI3/ODctMTUxNTI3ODEy/NC04Mjc0LmpwZWc.jpeg');



/* para sql server - remoto - produção */
CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
);

create table aquario (
/* em nossa regra de negócio, um aquario tem apenas um sensor */
	id INT PRIMARY KEY IDENTITY(1,1),
	descricao VARCHAR(300)
);

/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT FOREIGN KEY REFERENCES aquario(id)
);
