# Java Servlet

Com fins de ganho de conhecimento/estudo, nessa aplicação gerei páginas Web de forma dinâmica utilizando Servlets.
Nessa aplicação, temos um formulário para registrar empresas com seus nomes e data de fundação. É possível adicionar empresas, alterar, deletar e acessar a lista das empresas registradas até então.

Foi feita uma pequena aplicação CRUD - (Create, Read, Update, Delete) totalmente persistida em memória. Foi feita persistida em memória pois, o foco desse desenvolvimento era aplicar conceitos de:

- Fazer com que uma classe seja acessível via navegador;
- Criar páginas contendo formulários;
- Receber e converter parâmetros enviados por uma página;
- Distinguir os métodos HTTP;

Em um cenário de produção, é ideal utilizar a aplicação CRUD persistida em Banco de Dados.

## Servlets

### Breve explicação de Servlets retirada da apostila Java Web da Alura.

As Servlets são a primeira forma que veremos de criar páginas dinâmicas com Java. Usaremos a própria linguagem Java para isso, criando uma classe que terá capacidade de gerar conteúdo HTML. O nome "servlet" vem da ideia de um pequeno servidor cujo objetivo é receber chamadas HTTP, processá-las e devolver uma resposta ao cliente.


## TomCat

O Tomcat é um servidor web Java, mais especificamente, um container de servlets.
___

## Deploy da aplicação

Para simular o processo de deploy, criei uma instância no Tomcat. Copiei o arquivo zip do Tomcat e coloquei na pasta **opt** no Sistema Operacional Linux.

Na IDE Eclipse, criei o arquivo .war da aplicação. Na pasta do Tomcat, coloquei o arquivo .war na pasta com o nome "webapps".

Para instanciar o Tomcat, fiz utilizando a própria linha de comando. Segue o caminho: <mark>/opt/apache-tomcat-9.0.68/bin</mark>

No Sistema operacional Linux, o arquivo para inicializar a aplicação é o startup.sh. Eu pessoalmente, para conseguir fazer esse comando funcionar, utilizei primeiramente <mark>chmod +x startup.sh</mark>, e após isso utilizei <mark>./startup.sh</mark>

Após fazer isso, foi possível acessar a aplicação no navegador sem precisar da IDE Eclipse.

<mark>**ATENÇÃO**</mark>

Caso a versão de compilação das classes seja diferente da versão utilizada para executar o Tomcat, terá mensagem **HTTP Status 500**.

O que pode ser feito para solucionar o problema, é abrir o projeto na IDE Eclipse, e procurar por "Java Compiler" e deixar na mesma versão do Tomcat. Refazendo os passos de deploy a partir do arquivo .war da aplicação na pasta webapps, o problema deve ser solucionado.