Script de Banco de Dados (Sql)
CREATE DATABASE natal_solidario_jmf;

USE natal_solidario_jmf;

CREATE TABLE usuarios ( id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(100) NOT NULL,
email VARCHAR(150) NOT NULL UNIQUE, senha VARCHAR(255) NOT NULL, data_nascimento DATE NULL, bio TEXT NULL,
foto_perfil VARCHAR(255) DEFAULT 'default.png', ativo TINYINT(1) DEFAULT 1, nivel ENUM('user', 'admin') DEFAULT 'user',
data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE doacoes ( id INT PRIMARY KEY AUTO_INCREMENT, nome_doador VARCHAR(100) NOT NULL,
contato VARCHAR(100), tipo_doacao VARCHAR(50) NOT NULL, quantidade DECIMAL(10, 2) NOT NULL,
data_doacao DATE NOT NULL, observacoes TEXT, criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP );
