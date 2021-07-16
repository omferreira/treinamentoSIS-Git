*** Variables ***
@{JOGOS}    futebol voley   futsal  

*** Keywords ***
Contar010
    FOR     ${count}    IN RANGE    0   11
        log to console  ${count}
    END

ContarMax
    [Arguments]     ${MAX}
    FOR     ${COUNT}    IN RANGE    0   ${MAX}
        log to console  ${count}
    END

ContarLIsta
    FOR     ${COUNT}    IN  @{JOGOS}    
        log to console  ${count}
    END


*** Test Cases ***
Contador
    Contar010

ContadorMax
    ContarMax   11
    ContarMax   21
