*Settings*
Documentation       Login test suite

Resource            ${EXECDIR}/resources/Base.robot

Test Setup          Start Session
Test Teardown       After Test

*Test Cases*
User Login
    [Tags]      smoke
    
    ${user}                   Factory User  login
    #Add User From Database    ${user}

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}

Incorrect Pass
    [Tags]      i_pass

    ${user}     Create Dictionary       email=gustavo@hotmail.com       password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

User not found
    [Tags]      user_404

    ${user}     Create Dictionary       email=gustavo@404.com       password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.

Incorrect email
    [Tags]      i_email

    ${user}     Create Dictionary       email=gustavo.com       password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    Should Be Type Email

#Desafio 1 do modulo pro

#Automatizar 3 novos casos de testes: Email obrigatório, Senha Obrigatória e campos obrigatórios.

Required Email
    [Tags]      temp

    ${user}     Create Dictionary       email=${EMPTY}      password=abc123

    Go To Login Page
    Fill Credentials  ${user}
    Submit Credentials
    Alert Span Should Be    E-mail obrigatório
    
Required Pass
    [Tags]      temp

    ${user}     Create Dictionary       email=papito@hotmail.com      password=${EMPTY}

    Go To Login Page
    Fill Credentials  ${user}
    Submit Credentials
    Alert Span Should Be    Senha obrigatória

Required Fields
    [Tags]      temp

    @{expected_alerts}      Create List
    ...                     E-mail obrigatório
    ...                     Senha obrigatória

    # ${user}     Create Dictionary       email=${EMPTY}      password=${EMPTY}

    Go To Login Page
    # Fill Credentials  ${user}
    Submit Credentials
    Alert Spans Should Be   ${expected_alerts} 

