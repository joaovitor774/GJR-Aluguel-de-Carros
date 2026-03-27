CREATE TABLE IF NOT EXISTS cliente (
    id SERIAL PRIMARY KEY,
    pessoa_id INT UNIQUE REFERENCES pessoa(id),
    tipo_cliente VARCHAR(20) CHECK (tipo_cliente IN ('COMUM','APP'))
);
