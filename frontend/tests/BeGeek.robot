*Settings*
Documentation       BeGeek Teste suit

Resource            ${EXECDIR}/resources/Base.robot

Test Setup          Start Session
Test Teardown       After Test

*Test Cases*
Be a Geek
    [Tags]      smoke

    # Dado que eu tenho um usuário comum
    ${user}     Factory User    be_geek

    # Faço login na plataforma Getgeeks
    Do Login    ${user}
    # Go To Login Page
    # Fill Credentials            ${user}
    # Submit Credentials
    # User Should Be Logged In    ${user}    

    # Quando submeto o formulário para me tornar um Geek (prestador de serviços)
    Go To Geek Form
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    #Sleep               10

    # Então devo ver a mensagem de sucesso
    Geek Form Should Be sucess


# Short Description

#     ${user}     Factory User    short_desc
#     Do Login    ${user}

#     Go To Geek Form
#     Fill Geek Form      ${user}[geek_profile]
#     Submit Geek Form
#     Alert Span Should Be    A descrição deve ter no minimo 80 caracteres

# Long Description

#     ${user}     Factory User    long_desc
#     Do Login    ${user}

#     Go To Geek Form
#     Fill Geek Form      ${user}[geek_profile]
#     Submit Geek Form
#     Alert Span Should Be    A descrição deve ter no máximo 255 caracteres

# Empty Description
#     [Tags]      empty_desc

#     ${user}     Factory User    empty_desc
#     Do Login    ${user}

#     Go To Geek Form
#     Fill Geek Form      ${user}[geek_profile]
#     Submit Geek Form
#     Alert Span Should Be    Informe a descrição do seu trabalho

# Empty Whats
#     [Tags]      empty_whats

#     ${user}     Factory User    empty_whats
#     Do Login    ${user}

#     Go To Geek Form
#     Fill Geek Form      ${user}[geek_profile]
#     Submit Geek Form
#     Alert Span Should Be    O Whatsapp deve ter 11 digitos contando com o DDD

