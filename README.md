# Terraform Infra Pipeline 🚀

Este projeto demonstra como estruturar uma pipeline de infraestrutura como código utilizando **Terraform**, **GitHub Actions** e **AWS**, com suporte a múltiplos ambientes e workflows reutilizáveis.

---

## 📁 Estrutura do Projeto

![Estrutura do projeto](images/fluxo.png)

A estrutura foi pensada para facilitar a separação de ambientes (`dev`, e  `prod`) e manter os arquivos organizados para CI/CD e controle de estado remoto via S3 + DynamoDB.

---

## ⚙️ Workflow do Projeto

![Workflow do projeto](images/fluxo-detail.png)

O workflow utiliza `workflow_call` para permitir reuso entre ambientes, autenticação via OIDC com IAM Role, e execução segura das etapas de `init`, `plan`, `apply` e `destroy`.

---

## 🛠️ Tecnologias Utilizadas

- Terraform
- GitHub Actions
- AWS (S3, DynamoDB, IAM)
- OIDC para autenticação federada
- Workspaces e `.tfvars` para ambientes isolados

---

## 📦 Como usar

1. Crie o Identity Provider do GitHub em sua conta AWS  
2. Crie uma IAM Role em sua conta AWS (Permissão mínima de S3 e DynamoDB)  
3. Crie um Bucket S3 em sua conta AWS (Habilite o Bucket Versioning)  
4. Crie uma tabela no DynamoDB na sua conta AWS (PartitionKey com o nome "LockID")  
5. Clone esse repositório  
6. Configure os arquivos de workflow  

✅ Pronto! Você já está habilitado para implantar infraestrutura na AWS com Terraform via pipeline.

---

Contribuições são bem-vindas! 💬  
Dúvidas ou sugestões? Me chama aqui ou no LinkedIn!
