*** Settings ***
Resource    ../../resources/login.resource
Resource    ../../resources/board.resource

*** Test Cases ***
Cadastrar Diretoria com Sucesso
    [Documentation]    
    Login e Obter Token
    Gerar Nome Diretoria
    Cadastrar Diretoria


Cadastrar Diretoria sem Bordname
    [Documentation]    
    Login e Obter Token
    Cadastrar Diretoria sem bordname
    


Cadastrar Diretoria com Caracteres Inválidos
    [Documentation]    Faz login e tenta cadastra diretoria com caracteres inválidos
    Login e Obter Token
    Gerar Nome Diretoria
    Cadastrar Diretoria com Caracteres Inválidos 


Cadastrar Diretoria com Nome Vazio   
    [Documentation]    Faz login e tenta cadastrar diretoria com nome vazio
    Login e Obter Token
    Gerar Nome Diretoria
    Cadastrar Diretoria com Caracteres vazio