CREATE TABLE IF NOT EXISTS funcionario (
    id SERIAL PRIMARY KEY,
    pessoa_id INT UNIQUE REFERENCES pessoa(id),
    cargo VARCHAR(50),
    ativo BOOLEAN DEFAULT TRUE
);
