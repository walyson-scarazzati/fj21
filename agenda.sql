create database agenda;

use agenda;

create table login (
usuario varchar(30) not null,
senha varchar(30) not null
);

create table contatos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  email VARCHAR(255),
  endereco VARCHAR(255),
  dataNascimento DATE,
  primary key (id)
);


insert into login values ('teste','teste');