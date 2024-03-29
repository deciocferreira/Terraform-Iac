# AWS na prática <image src="https://user-images.githubusercontent.com/12403699/234434276-e7cdcab8-c594-47a6-8862-7645e5740a2c.png" width="80" height="50">
  
Neste projeto, iremos provisionar uma instância EC2 da AWS através da ferramenta de Iac *Terraform*.

## Preparando o ambiente

1. Instale o AWS CLI

2. Crie um usuário IAM para sua conta da AWS

3. Configure as seguintes variáveis de ambiente em seu terminal com o comando *aws configure*:

    > export AWS_ACCESS_KEY_ID=<ID_DA_SUA_CHAVE_DE_ACESSO_DA_AWS>

    > export AWS_SECRET_ACCESS_KEY=<SUA_CHAVE_DE_ACESSO_SECRETA_DA_AWS>

**Troque o valor vem depois de = nas linhas de código acima com os valores reais do seu usuário IAM.**

## Resultado esperado

Após a execução do código Terraform, você terá uma instância EC2 do Ubuntu em sua conta da AWS e a criação de um Auto Scaling Group com um mínimo de 1, desejado de 2 e máximo de 4 instâncias. 
  
## Como utilizar este projeto

Faça os serguintes passos executando os seguintes comandos:
  
1. Inicialize o Terraform no diretório em que o script está localizado baixando os plugins necessários
    > terraform init 

2. Valide o script, verificando se há erros de sintaxe
    > terraforma validate  

3. Visualize o que será criado
    > terraform plan
   
4. Crie a infraestrutura
    > terraform apply

*Digite yes e pressione ENTER quando aparecer um prompt de confirmação do comando.*

3. Caso seja necessário remover a infraestrutura criada:
    > terraform destroy

*Digite yes e pressione ENTER quando aparecer um prompt de confirmação do comando.*
 
  
## Referências

*https://aws.amazon.com/cli/*  
