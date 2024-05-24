create database dbBiblioteca;
use dbBiblioteca;
drop database dbBiblioteca;

create table autores (
autor_id int not null auto_increment primary key,
nome varchar (200),
nacionalidade varchar (100)
);

create table livros (
livro_id int not null auto_increment primary key,
titulo varchar (500),
ano_publicacao int,
autor_id int,
foreign key (autor_id) references autores(autor_id)
);

insert into autores (nome, nacionalidade) values
('J.K. Rowling', 'Britânica'),
('George R.R. Martin', 'Americano'),
('J.R.R. Tolkien', 'Britânico');

insert into livros (titulo, ano_publicacao, autor_id) values
('Harry Potter e a Pedra Filosofal', 1997, 1),
('Harry Potter e a Câmara Secreta', 1998, 1),
('A Game of Thrones', 1996, 2),
('A Clash of Kings', 1998, 2),
('The Hobbit', 1937, 3),
('The Lord of the Rings', 1954, 3);

select * from autores;

select * from livros;

select autores.nome from autores
join livros on autores.autor_id = livros.autor_id
where livros.titulo = 'Harry Potter e a Pedra Filosofal';

select titulo from livros where ano_publicacao = 1998;

select * from autores where nome = 'George R.R. Martin';

select livros.titulo, autores.nome
from livros
join autores on livros.autor_id = autores.autor_id;
