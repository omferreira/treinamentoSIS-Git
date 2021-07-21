*** Test Cases ***
Testar Idade
    Condicional Simples     20

*** Keywords ***
Condicional Simples
    [Arguments]     ${idade}
    IF  '${idade}'>="18"
        Log To Console   Maior de IDADE 
    END