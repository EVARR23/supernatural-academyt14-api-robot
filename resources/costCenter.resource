*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Resource   variables.resource
Resource   login.resource



*** Keywords ***

Gerar Nome Centro de Custo
    ${palavra_randomica}=    Generate Random String    length=9    chars=[LETTERS]
    ${palavra_randomica}=    Convert To Lower Case    B${palavra_randomica}
    Set Test Variable    ${COSTCENTERNAME}    ${palavra_randomica}
    Log    ${COSTCENTERNAME}
Cadastrar Centro de Custo
    [Documentation]    Cadastra um centro de custo com nome dinâmico
    ${headers}=    Create Dictionary    Content-Type=application/json    Authorization=${TOKEN}
    Create Session    supernatural    ${BASE_URL}    headers=${headers}    verify=${False}
    ${body}=    Create Dictionary    costCenterName=${COSTCENTERNAME}   boardId= ${BOARD_ID}
    ${response}=    POST On Session   supernatural     https://api-shogun.qacoders.dev.br/api/costCenter   json=${body}   expected_status=201
    RETURN    ${response}


Cadastrar centro de custo constCentername não informado
    [Documentation]    Tenta cadastrar um centro de custo sem informar o nome
    ${headers}=    Create Dictionary    Content-Type=application/json    Authorization=${TOKEN}
    Create Session    supernatural    ${BASE_URL}    headers=${headers}    verify=${False}
    ${body}=    Create Dictionary    costCenterName=   boardId= ${BOARD_ID}
    ${response}=    POST On Session   supernatural     https://api-shogun.qacoders.dev.br/api/costCenter   json=${body}   expected_status=400
    ${json}=    To Json    ${response.content}    
    


Cadastrar centro de custo com boardId inválidos
    [Documentation]    Tenta cadastrar um centro de custo com caracteres inválidos
    ${headers}=    Create Dictionary    Content-Type=application/json    Authorization=${TOKEN}
    Create Session    supernatural    ${BASE_URL}    headers=${headers}    verify=${False}
    ${body}=    Create Dictionary    costCenterName=$aude   boardId= ${BOARD_ID}
    ${response}=    POST On Session   supernatural     https://api-shogun.qacoders.dev.br/api/costCenter   json=${body}   expected_status=400
    ${json}=    To Json    ${response.content}    
    

Cadastrar centro de custo contendo mais de 50 caracteres
    [Documentation]    Tenta cadastrar um centro de custo com mais de 50 caracteres
    ${headers}=    Create Dictionary    Content-Type=application/json    Authorization=${TOKEN}
    Create Session    supernatural    ${BASE_URL}    headers=${headers}    verify=${False}
    ${body}=    Create Dictionary    costCenterName=aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa   boardId= ${BOARD_ID}
    ${response}=    POST On Session   supernatural     https://api-shogun.qacoders.dev.br/api/costCenter   json=${body}   expected_status=400
    ${json}=    To Json    ${response.content}    
   

Cadastrar centro de custo constCentername já existente
    [Documentation]    Tenta cadastrar um centro de custo com nome já existente
    ${headers}=    Create Dictionary    Content-Type=application/json    Authorization=${TOKEN}
    Create Session    supernatural    ${BASE_URL}    headers=${headers}    verify=${False}
    ${body}=    Create Dictionary    costCenterName=${COSTCENTERNAME}   boardId= ${BOARD_ID}
    ${response}=    POST On Session   supernatural     https://api-shogun.qacoders.dev.br/api/costCenter   json=${body}   expected_status=409
    ${json}=    To Json    ${response.content}    
    RETURN    ${response}

