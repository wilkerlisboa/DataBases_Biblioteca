# Banco de Dados - Biblioteca

Este é um exercício de modelagem e implementação de um banco de dados para uma biblioteca. O exercício envolve a criação de tabelas para autores, editores, livros, usuários e empréstimos, permitindo o rastreamento de quem pegou emprestado qual livro e quando.

## Estrutura do Banco de Dados

O banco de dados é composto por cinco tabelas principais:

1. **autores:** Armazena informações sobre os autores dos livros.
2. **editores:** Contém detalhes sobre as editoras dos livros, incluindo uma chave estrangeira para a tabela de autores.
3. **livros:** Armazena dados específicos dos livros, incluindo títulos, anos de publicação, e quantidades disponíveis, com chaves estrangeiras para autores e editores.
4. **usuarios:** Registra informações sobre os usuários da biblioteca, como nome, e-mail e telefone.
5. **emprestimos:** Rastreia os empréstimos de livros para usuários, incluindo datas de empréstimo e devolução.

## Instruções para Execução

1. **Crie o Banco de Dados:** Execute o script SQL fornecido (`tables.sql`) para criar o banco de dados e suas tabelas.
   
    ```bash
    mysql -u SEU_USUARIO -p < tables.sql
    ```

2. **Insira Dados Iniciais:** Utilize o script SQL para inserir dados fictícios nas tabelas.

    ```bash
    mysql> INSERT INTO nome_tabela(colunas) values (dados);
    ```

3. **Execute Consultas:** Explore as consultas de exemplo fornecidas no arquivo SQL (`queries.sql`) para obter informações sobre autores, livros, usuários e empréstimos.

    ```bash
    mysql> SELECT *FROM nome_tabela;
    ```

## Exemplos de Consultas

Alguns exemplos de consultas que você pode realizar:

- Listar todos os autores e seus livros.
- Contar a quantidade de livros disponíveis por título.
- Selecionar todos os empréstimos com detalhes do livro e usuário.

## Contribuição

Sinta-se à vontade para contribuir com melhorias ou compartilhar suas próprias consultas SQL para enriquecer o exercício.

## Criadores
<tr>
    <td align="center">
      <a href="https://github.com/wilkerlisboa" title="GitHub">
        <img src="https://avatars.githubusercontent.com/u/73085812?s=400&u=c9896f5414357b8e3eff4e76c6961fbd6083c74e&v=4" width="100px;" alt="Foto do Wilker Lisboa no GitHub"/><br>
        <sub>
          <b>Wilker Lisboa</b>
        </sub>
      </a>
    </td>
</tr>

## Licença

Este exercício é fornecido sob a [Licença MIT](LICENSE).
