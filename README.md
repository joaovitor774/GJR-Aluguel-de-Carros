# 🚗 AlugaCar

## 📌 Descrição
Sistema de banco de dados para uma empresa de locação de veículos.

## 🎯 Objetivo
Gerenciar:
- Clientes
- Funcionários
- Veículos
- Contratos de locação
- Pagamentos

## 👥 Público-alvo
- Pessoas comuns
- Motoristas de aplicativos

Trabalho de banco de dados
````mermaid
erDiagram
  PESSOA ||--o| CLIENTE : "é"
  PESSOA ||--o| FUNCIONARIO : "é"
  CLIENTE ||--o| MOTORISTA_APP : "pode_ser"
  CLIENTE ||--o{ CONTRATO : "assina"
  VEICULO ||--o{ CONTRATO : "é_alugado_em"
  FUNCIONARIO ||--o{ CONTRATO : "cria"
  CONTRATO ||--o{ PAGAMENTO : "possui"

  PESSOA {
    uuid id
    string cpf
    string nome
    string sobrenome
    string email
    string telefone
  }

  CLIENTE {
    uuid id
    uuid pessoa_id
    string tipo_cliente "COMUM|APP"
  }

  FUNCIONARIO {
    uuid id
    uuid pessoa_id
    string cargo
    bool ativo
  }

  MOTORISTA_APP {
    uuid id
    uuid cliente_id
    string numero_cnh
    string categoria_cnh
    string plataformas
  }

  VEICULO {
    uuid id
    string placa
    string marca
    string modelo
    string tipo "MOTO|CAMINHAO|CARRO"
    string status "DISPONIVEL|ALUGADO|MANUTENCAO"
    int ano
  }

  CONTRATO {
    uuid id
    string numero_contrato
    date data_contrato
    uuid cliente_id
    uuid veiculo_id
    uuid funcionario_id
    string tipo_pagamento "PIX|CARTAO"
    string finalidade "COMUM|RENDA_APP"
    date data_inicio
    date data_fim
    decimal valor_diaria
    decimal valor_total
    string status "ATIVO|FINALIZADO|CANCELADO"
  }

  PAGAMENTO {
    uuid id
    uuid contrato_id
    string metodo "PIX|CARTAO"
    decimal valor
    string status "PENDENTE|PAGO"
    date data_pagamento
  }
````
