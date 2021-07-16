*** Variables ***
&{Pessoa}=  Nome=Oswaldo    Idade=59    Sexo=M  EstadoCivil=Casado  Cidade=São Paulo    Estado=SP
&{​​​ALUNO}​​​= notaA=5.5   notaB=5.4   notaC=10  

@{Celulares}=   Nokia   Sansumg     Motorola    Aplle   LG

*** Test Case ***
Imprimindo Variavel do Tipo Dicionario Completo
    log to console  ${Pessoa}

Imprimindo Variavel do Tipo Dicionario
    log to console  ${Pessoa.Nome}
    log to console  ${Pessoa.Idade}
    log to console  ${Pessoa.Sexo}
    log to console  ${Pessoa.EstadoCivil}
    log to console  ${Pessoa.Cidade}
    log to console  ${Pessoa.Estado}

Imprimindo Variavel do Tipo Lista Completa
    log to console  ${Celulares}

Imprimindo Variavel do Tipo Lista
    log to console  ${Celulares[0]}
    log to console  ${Celulares[1]}
    log to console  ${Celulares[2]}
    log to console  ${Celulares[3]}
    log to console  ${Celulares[4]}

Imprimindo Calculos
    ${​​​media}​​​  Evaluate   (${​​​ALUNO.notaA}​​​+${​​​ALUNO.notaB}​​​+${​​​ALUNO.notaC})​​​/3
    log to console  ${​​​media}