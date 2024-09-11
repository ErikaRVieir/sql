/*  Criando um banco de dados-SQL*/

CREATE DATABASE sistemadeacademia;

/*Exibir se o banco de dados foi criado */

show databases;

--Deletar um Banco de Dados

DROP DATABASE sistemadeacademia;

/*Usar o banco de dados que vou criar tabelas e dadps na  sequência*/

USE DATABASE sistemadeacademia;

/* Criando tabela no Banco de Dados */
CREATE TABLE cadastrodecliente(
    cpf CHAR(15) primary key NOT NULL,
    nomecompleto VARCHAR(200) NOT NULL,
    datadenascimento DATE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    telefone INT(15) NOT NULL,
    cep INT (8) NOT NULL,
    rua VARCHAR(50) NOT NULL,
    numero CHAR(8) NOT NULL,
    bairro  CHAR(20) NOT NULL,
    estado CHAR(20) NOT NULL,
    cidade  VARCHAR(50) NOT NULL,
    complemento VARCHAR(50)
);

/* Adicionando um atributo na tabela com Alter*/
ALTER TABLE cadastrodecliente
ADD instagram VARCHAR(50);

/*Excluindo um atributo da tabela com Alter */
ALTER TABLE cadastrodecliente
DROP COLUMN instagram;

/* Renomeando a coluna/ATRIBUTO da tabela */
ALTER TABLE cadastrodecliente
CHANGE COLUMN nomecompleto  nomeesobrenome VARCHAR(200)NOT NULL;
/* Alterando o dadatype de uma coluna*/
ALTER TABLE cadastrodecliente
MODIFY COLUMN nomeesobrenome VARCHAR(250) NOT NULL;

/* Deletando a tabela toda*/
DROP TABLE cadastrodecliente;



