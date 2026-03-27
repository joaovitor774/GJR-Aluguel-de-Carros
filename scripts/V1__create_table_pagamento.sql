CREATE TABLE IF NOT EXISTS pagamento (
    id SERIAL PRIMARY KEY,
    contrato_id INT REFERENCES contrato(id),
    valor NUMERIC(10,2),
    status VARCHAR(20)
);
