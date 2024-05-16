CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
-- criação do banco de dados com os padrões de caractere e collation UTF-8
USE cadastro;
-- utilização do banco de dados

CREATE TABLE pessoas (
    id int NOT NULL AUTO_INCREMENT,
    -- AUTO_INCREMENT = automaticamente vai ser preenchido
    nome VARCHAR(30) NOT NULL,
    -- NOT NULL = obrigatório ter um valor digitado
    nascimento date,
    -- formato de data
    sexo ENUM('M', 'F'),
    -- tipo de coleção, estabelecendo quais valores serão aceitos nessa coluna
    peso DECIMAL(5,2),
    -- 5 casas ao todo, e 2 casas depois da vírgula
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    -- se não houverem valores digitados, o valor padrão será "Brasil"
    PRIMARY KEY (id)
    -- a chave primária será a coluna "id"
) DEFAULT CHARSET = utf8;
-- configuração de caracteres utf-8 padrão

-- inserindo dados na tabela (INSERT INTO)
INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade)
-- inserindo valores nas rescpectivas colunas
VALUES ('Manuel', '1996-06-09', 'M', '60.9', '1.69', 'Portugal'),
('Maria', '1969-09-06', 'F', '60.8', '1.96', 'Portugal');

INSERT INTO pessoas VALUES (DEFAULT, 'Jodofredo', '1984-01-02', 'M', '60.5', '1.60', 'Brasil');
-- caso os valores estejam na mesma ordem da estrutura da tabela, não é necessário especificar as colunas que os valores serão inseridos
-- CONTUDO, apesar de coluna id ser auto incrementada, a linguagem necessita de um valor para inserir, colocando 'DEFAULT' é considerado
--o auto incremento da coluna que foi criado anteriormente

SELECT * from pessoas;

-- DDL (Data Definition Language) CREATE DATABASE; CREATE TABLE
-- DML (Data Maniputalation Language) INSERT INTO;


-- alterando estrutura da tabela (ALTER TABLE e DROP TABLE)
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);
-- adiciona uma nova coluna na tabela

ALTER TABLE pessoas
DROP COLUMN profissao;
-- deleta uma coluna da tabela

-- adiciona a coluna depois da coluna de nomes
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;