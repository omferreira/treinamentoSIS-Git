*** Settings ***

Library     SeleniumLibrary

*** Variables ***
${Mensagem}     MY ACCOUNT

*** Test Cases ***
Cenario: Cadastro de novo cliente.
    # Abrir o navegador. Ex: chrome, ie, firefox
    Open Browser    http://automationpractice.com/index.php         chrome  
    # Maximar o navegador
    Maximize Browser Window
    # Definir tempo maximo de espera
    Set Selenium Timeout    60
    # Clicar no elemento
    Click Element   xpath=//a[@class='login']
    # Esperar a tela carregar
    Wait Until Element Is Visible   id=email_create
    # Inserir Texto do e-mail
    Input Text  id=email_create     testeomf9@seudominio.com
    # Selecionar o botao para criar um novo usuario
    Click Element   xpath=//button[@class='btn btn-default button button-medium exclusive']
    # Esperar a tela carregar
    Wait Until Element Is Visible   id=id_gender1
    # Seleciona Mr. ou Mrs.
    Click Element   id=id_gender1
    # Inserir Texto Nome
    Wait Until Element Is Visible   id=customer_firstname
    Input Text  id=customer_firstname   Oswaldo
    # Inserir Texto Sobrenome
    Click Element   id=customer_lastname
    Input Text  id=customer_lastname    Ferreira
    # Inserir Texto Senha
    Wait Until Element Is Visible   id=passwd
    Input Text  id=passwd   sis@1234
    #Wait Until Element Is Visible   id=unifodays
    Select From List By Value   id=days     25
    Select From List By Value   id=months   7
    Select From List By Value   id=years    1962
    Input Text  id=firstname    Rua Perobas
    Input Text  id=lastname     Roxa
    Input Text  id=company      SIS
    Input Text  id=address1     Rua das Rosas
    Input Text  id=address2     Sala 1
    Input Text  id=city         São Paulo
    Input Text  id=postcode     06400
    Select From List By Label   id=id_state     Texas
    Select From List By Value   id=id_country   21
    Input Text  id=other        Teste de automação
    Input Text  id=phone_mobile     11987654321
    Click Element   id=submitAccount 

    Capture Page Screenshot  

    ${Mensagem_Atual}   Get Text    xpath=//h1[@class="page-heading"]

    Should Be Equal     ${Mensagem}     ${Mensagem_Atual} 

    Capture Page Screenshot

    Close Browser