create database gerenciaTarefas;
use gerenciaTarefas;

-- Criando tabela de usuarios
create table usuarios(
	id int auto_increment primary key, -- codigo primary key
	nome varchar(100) not null,
	cpf varchar(11) not null unique not null -- unique pois nao pode se repetir, bom para usar em selects
);

-- Criando tabela de tarefas
create table tarefas (
	id int auto_increment primary key, -- codigo primary key
	titulo varchar(100) not null, -- nome da tarefa
	descricao varchar(255),
	data_criacao timestamp default current_timestamp -- colocando data de criacao na tabela tarefas e setando a data e hora atuais como valor default
);

select * from usuarios;

-- Corrigindo nome do id unico (primary key) das tabelas
-- change (nome antigo) (novo nome) e atributos
alter table usuarios change id cod_usuario int auto_increment;
alter table tarefas change id cod_tarefa int auto_increment;


-- Criando tabela de relacionamento entre Usuarios e Tarefas
create table usuario_tarefa (
	cod_usuario_tarefa int auto_increment primary key,
    cod_usuario int not null,
    cod_tarefa int not null,
    foreign key (cod_usuario) references usuarios(cod_usuario), -- chave estrangeira que relaciona o cod_usario desta tabela com o cod_usario da tabela usuarios 
    foreign key (cod_tarefa) references tarefas(cod_tarefa)	-- chave estrangeira que relaciona o cod_tarefa desta tabela com o cod_tarefa da tabela tarefas
);

-- inserindo usuários
insert into usuarios(nome,cpf)
values
("Ted","45898234501"),
("Bunny","45898234502"),
("Franky","45898234503"),
("Bayle","45898234504");

select * from usuarios;


-- Delete usuarios

delete from usuarios where cod_usuario = 1;

-- auto increment errado:
-- para voltar o auto increment ao numero desejado
alter table usuarios auto_increment = 1;

-- adicionando novos usarios na tabela e com id do auto_incremet ajustados
INSERT INTO `usuarios` (`nome`,`cpf`)
VALUES
  ("Zephr Ross","202511244"),
  ("Harper Burke","374649744"),
  ("Martha Allison","216174445"),
  ("Amos Whitney","326029033"),
  ("Gregory Wilkins","184205858"),
  ("Henry Guerra","361145267"),
  ("Oliver Hudson","117258963"),
  ("Chester Everett","162713647"),
  ("Russell Frank","134054867"),
  ("Herman Houston","496517946");
INSERT INTO `usuarios` (`nome`,`cpf`)
VALUES
  ("Rebekah Harmon","27915361"),
  ("Sylvia Watson","27676200"),
  ("Brian Ayala","246603960"),
  ("Rhiannon Bell","431289660"),
  ("Vladimir Owens","42680222"),
  ("Ferris Doyle","435546943"),
  ("Rigel Kirby","1472351k"),
  ("Arthur Patterson","14308113"),
  ("Castor Duncan","45464733"),
  ("Sarah Solis","31388686");

select * from usuarios;

-- delete usuario pelo cpf (unique)
delete from usuarios where cpf = "31388686";

-- corrigindo auto_increment novamente
alter table usuarios auto_increment = 19;

-- inserindo novamente o usuario no banco de dados
INSERT INTO `usuarios` (`nome`,`cpf`)
VALUES
  ("Sarah Solis","31388686");
  
select * from tarefas; 


select * from usuario_tarefa;


