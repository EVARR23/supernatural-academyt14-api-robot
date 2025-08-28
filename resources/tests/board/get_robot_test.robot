*** Settings ***
Resource    ../../resources/login.resource
Resource    ../../resources/board.resource


*** Test Cases ***
Listar Cadastro de Diretoria com Sucesso
    [Documentation]    Faz login, cadastra uma diretoria e lista com sucesso
    Login e Obter Token
    Gerar Nome Diretoria
    Cadastrar Diretoria
    Listar Diretoria
