# Prova prática da Suntech

Teste prático para vaga de desenvolvimento java na Suntech.

Projeto: Listagem de Usuários

Pode-se:

- Filtrar usuário por Nome, Username e Email;
- Adicionar novo usuário;
- Editar usuário;
- Deletar um usuário;
- Habilitar e Desabilitar usuário;
- Frontend da lista responsivo;

Usado para rodar:

- Desenvolvido na IDE Eclipse Neon;
- Tomcat 8;
- Java 8;
- JDK/JRE 1.8;
- Maven e dependências;
- Banco Relacional PostGres, usuário postgres e senha postgres, schema prova;
- Frameworks FrontEnd JQuery, Bootstrap;
- Framework Spring MVC;
- Framework de Persistência Hibernate e JPA.

Para o PostGres local, foi utilizado PgAdmin III.

Arquivo SQL encontra-se na raiz do projeto users.sql e os dados de acesso no src/main/resources/application.properties.

Faça o clone via git para a workspace do seu projeto, em seguida no Eclipse faça o Import para o mesmo, 
usando o Maven faça um Maven->Update Project, para atualizar todas as dependências do projeto. Em seguida dê um Maven Clean e Maven Install em Run As.
Adicione seu projeto no Server Tomcat 8 e faça o start até concluir.

Ao instalar no seu localhost acesse pelo endereço: http://localhost:8080/Suntech

