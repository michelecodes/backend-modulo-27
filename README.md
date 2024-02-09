# Módulo 27

Conteudo de apoio:
- [Modulo 27.pptx](https://github.com/michelecodes/backend-modulo-27/files/14212619/Modulo.27.pptx)

## DDL 


DDL significa Linguagem de Definição de Dados (em inglês, Data Definition Language). É uma linguagem usada em bancos de dados para definir a estrutura e as características dos dados dentro do banco de dados. Isso inclui comandos como CREATE, ALTER e DROP, que são usados para criar, modificar e excluir tabelas, índices, visões e outros objetos de banco de dados. Em resumo, DDL é usado para definir a estrutura e as propriedades dos dados armazenados em um banco de dados.

### Exemplos
- CREATE TABLE: Este comando é usado para criar uma nova tabela no banco de dados
  
          CREATE TABLE clientes (
          id INT PRIMARY KEY,
          nome VARCHAR(100),
          email VARCHAR(100)
      );
- ALTER TABLE: Este comando é usado para modificar uma tabela existente, adicionando, removendo ou modificando colunas.

      ALTER TABLE clientes
      ADD telefone VARCHAR(15);
- DROP TABLE: Este comando é usado para excluir uma tabela do banco de dados. 

        DROP TABLE clientes;
- CREATE INDEX: Este comando é usado para criar um índice em uma tabela para melhorar o desempenho de consultas.

      CREATE INDEX idx_nome ON clientes (nome);
  - ALTER TABLE DROP COLUMN: Este comando é usado para remover uma coluna de uma tabela existente.

        ALTER TABLE clientes
        DROP COLUMN email;

