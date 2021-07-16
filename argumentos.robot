*** Keywords ***
Somar Numeros
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${VALOR}     Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${VALOR}
Subtrair Numeros
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${VALOR}     Evaluate    ${NUM_A}-${NUM_B}
    [Return]    ${VALOR}
Multiplicar Numeros
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${VALOR}     Evaluate    ${NUM_A}*${NUM_B}
    [Return]    ${VALOR}
Dividir Numeros
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${VALOR}     Evaluate    ${NUM_A}/${NUM_B}
    [Return]    ${VALOR}
Retornar Email
    [Arguments]     ${NOME}
    Set Test Variable   ${EMAIL}   ${NOME}@email.com.br
    [Return]    ${EMAIL}

*** Test Cases ***
Imprimindo
    ${RESULTADO}=   Somar Numeros   8   4
    log to console   ${RESULTADO}
    ${RESULTADO}=   Subtrair Numeros    8   4   
    log to console   ${RESULTADO}
    ${RESULTADO}=   Multiplicar Numeros    8   4   
    log to console   ${RESULTADO}
    ${RESULTADO}=   Dividir Numeros    8   4   
    log to console   ${RESULTADO}
    ${ENDERECO}=    Retornar Email  Oswaldo
    log to console   ${ENDERECO}
