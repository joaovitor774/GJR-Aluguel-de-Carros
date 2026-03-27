CREATE TABLE IF NOT EXISTS contrato (
    id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES cliente(id),
    veiculo_id INT REFERENCES veiculo(id),
    data_inicio DATE,
    data_fim DATE,
    valor_total NUMERIC(10,2),
    tipo_pagamento VARCHAR(20)
);
