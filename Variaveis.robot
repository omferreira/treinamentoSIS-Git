*** Variables ***
&{Pessoa}=  Nome=Oswaldo    Idade=59    Sexo=M  EstadoCivil=Casado  Cidade=São Paulo    Estado=SP
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