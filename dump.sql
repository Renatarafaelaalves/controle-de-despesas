CREATE DATABASE controle_de_despesa;

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha text not null
);

CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    descricao TEXT NOT NULL
);

CREATE TABLE transancoes (
    id SERIAL PRIMARY KEY,
    desccricao TEXT,
    valor INTEGER NOT NULL,
    data DATE,
    categoria_id INTEGER NOT NULL REFERENCES categorias(id),
    usuario_id INTEGER NOT NULL REFERENCES usuarios(id),
    tipo TEXT
);

INSERT INTO
    categorias (descricao)
VALUES
    (
        'Alimentação',
        'Assinaturas e Serviços',
        'Casa',
        'Mercado',
        'Cuidados Pessoais',
        'Educação',
        'Família',
        'Lazer',
        'Pets',
        'Presentes',
        'Roupas',
        'Saúde',
        'Transporte',
        'Salário',
        'Vendas',
        'Outras receitas',
        'Outras despesas',
        'Viagens'
    );