# Qualificador de Leads Salesforce

Este projeto implementa uma lógica de qualificação automática de Leads na plataforma Salesforce, atribuindo um score com base em dados como receita anual, número de funcionários e setor de atuação. O objetivo é facilitar a priorização de clientes e oportunidades comerciais por meio de uma métrica objetiva.

## Funcionalidades

- Cálculo automático de score no momento da inserção de Leads
- Lógica síncrona para até 200 registros
- Atualização assíncrona via job agendado para Leads sem score
- Trigger Apex integrada com serviço de cálculo
- Estrutura modular com classes reutilizáveis

## Ferramentas

  - Class apex
  - Trigger com class Handler;
  - Ferramentas assíncronas (Batchable e Schedulable);

## ⚙️ Instalação

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/qualificador-Leads.git
