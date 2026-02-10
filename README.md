# GJR-Aluguel-de-Carros
Trabalho de banco de dados
````mermaid
erDiagram
    MOTORISTA ||--o{ CONTRATO : assina
    CARRO ||--o| CONTRATO : utilizado_em

    MOTORISTA {
        string id
        string nome
        string cnh
    }

    CARRO {
        string id
        string model
        string placa
        float valorDiaria
    }

    CONTRATO {
        string id
        date dataInicio
        date dataFim
        string status
    }
````
