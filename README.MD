🚀 Projeto de Automação (QA.Coders)

Este projeto consiste em um trabaprojeto  de automação de testes de API, desenvolvido durante o curso QA.Coders. Utilizando o Robot Framework, o projeto testa as funcionalidades de Criação, Consulta e Edição da API de Diretorias, garantindo que todos os endpoints funcionem corretamente.

🛠️ Tecnologias Utilizadas
Robot Framework: Framework de automação de testes.
RequestsLibrary: Biblioteca para interação com APIs REST.
Python 3: Linguagem utilizada no desenvolvimento do projeto.

Como Rodar os Testes:

1. Configuração Inicial
Clone o repositório e instale as dependências necessárias:
git clone <https://github.com/EVARR23/supernatural-academyt14-api-robot.git>
cd supernatural-academyt14-api-robot

2. Executando a Suíte de Testes
Para rodar todos os testes:

----

robot tests/
--

Para rodar testes específicos, utilize as tags definidas no projeto:

- Criação de Diretorias (POST): Testes de sucesso e cenários de erro para validar a criação correta de diretorias.
- Consulta de Diretorias (GET): Validação da consulta por ID e da contagem total de diretorias cadastradas.
- Edição de Diretorias (PUT): Testes de alteração de nome, incluindo validação para nomes duplicados ou inválidos.
- Criação de centro de custo (POST): Testes de sucesso e cenários de erro para validar a criação correta de centro de custo.
