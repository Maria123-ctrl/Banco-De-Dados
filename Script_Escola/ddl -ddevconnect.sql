CREATE DATABASE tb_ddevconnect;

USE tb_ddevconnect;

CREATE TABLE tabela_usuario(
	id INT IDENTITY (1,1) PRIMARY KEY,
	nome_completo NVARCHAR(255),
	nome_usuario NVARCHAR(30),
	email NVARCHAR(255) NOT NULL,
	senha NVARCHAR(50) NOT NULL,
	foto_perfil_url NVARCHAR(150)

);

SELECT * FROM tabela_usuario;

CREATE TABLE tabela_publicacao(
	id INT IDENTITY(1,1),
	descricao NVARCHAR(255),
	imagem_url NVARCHAR(255),
	data_publi DATE NOT NULL,

	
	--id_usuario INT IDENTITY (1,1) PRIMARY KEY FOREIGN KEY REFERENCES tb_usuario
);

SELECT * FROM tabela_publicacao;

CREATE TABLE tabela_comentario(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_usuario INT IDENTITY (1,1)  FOREIGN KEY REFERENCES tb_usuario,
	id_publicacao INT IDENTITY (1,1)  FOREIGN KEY REFERENCES tb_publicacao,
	texto NVARCHAR (255) NOT NULL

);

SELECT * FROM tabela_comentario;

CREATE TABLE tabela_seguidor(
	id INT IDENTITY (1,1) PRIMARY KEY,
	id_usuario INT IDENTITY FOREIGN KEY REFERENCES tabela_usuario

);
SELECT * FROM tabela_seguidor;

CREATE TABLE tabela_curtida(
	id INT IDENTITY (1,1) PRIMARY KEY,
	id_usuario INT IDENTITY FOREIGN KEY REFERENCES tb_usuario,
	id_publicacao INT IDENTITY FOREIGN KEY REFERENCES tb_publicacao
);

SELECT * FROM tabela_curtida;