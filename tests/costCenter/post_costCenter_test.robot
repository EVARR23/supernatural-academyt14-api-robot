*** Settings ***
Resource    ../../resources/login.resource
Resource    ../../resources/costCenter.resource
Resource    ../../resources/board.resource
Test Setup    Login e Obter Token


*** Test Cases ***
 Cadastrar Centro de Custo com Sucesso
    [Documentation]     
    Gerar Nome Diretoria
    Cadastrar Diretoria
    Gerar Nome Centro de Custo
    Cadastrar Centro de Custo 


Cadastrar centro de custo constCentername não informado
    [Documentation]     
    Cadastrar centro de custo constCentername não informado

Cadastrar centro de custo com boardId inválidos
    [Documentation]    
    Cadastrar centro de custo com boardId inválidos


Cadastrar centro de custo contendo mais de 50 caracteres
    [Documentation]    
    Cadastrar centro de custo contendo mais de 50 caracteres


Cadastrar centro de custo constCentername já existente
    [Documentation]     
    Cadastrar centro de custo constCentername já existente
