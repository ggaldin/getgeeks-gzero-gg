*Settings*
Documentation       Session route test suite

Resource            ${EXECDIR}/resources/Base.robot

*Variables*
&{inv_pass}         email=gustavo_galdin@hotmail.com      password=abc
&{inv_email}        email=gustavo_galdin.hotmail.com      password=abc
&{email_404}        email=gustavo@hotmail.com             password=abc
&{empty_email}      email=${EMPTY}                        password=abc
&{wo_email}         password=abc
&{empty_pass}       email=gustavo_galdin@hotmail.com      password=${EMPTY}
&{wo_pass}          email=gustavo_galdin@hotmail.com      

*Test Cases*
User Session

    #Dado que temos um usuário cadastrado
    #https://getgeeks-gateway-gustavo.herokuapp.com/users
    ${payload}      Factory User Session    signup      
    #Create Dictionary  name=Teste email=gustavo_galdin@hotmail.com      password=Ccsjud01
    POST User  ${payload}

    ${payload}     Factory User Session     login
    # Create Dictionary   email=gustavo_galdin@hotmail.com      password=Ccsjud01
    #${headers}      Create Dictionary   Content-Type=application/json

    #Quando faço uma requisição na rota /sessions
    ${response}     POST Session  ${payload}
    #headers=${headers}

    #Então o status code deve ser 200
    Status Should Be     200                     ${response}

    #E deve gerar um token JWT
    ${size}              Get Length              ${response.json()}[token]
    #${expected_size}     Convert To Integer      140

    Should Be True       ${size} > 0
    #Should Be Equal      ${expected_size}        ${size}
  
    #E esse token deve expirar em 10 dias
    Should Be Equal      10d                     ${response.json()}[expires_in] 

Should Not Get Token
    [Template]      Attempt POST Session

    ${inv_pass}     401     Unauthorized
    ${inv_email}    400     Incorrect email  
    ${email_404}    401     Unauthorized
    ${empty_email}  400     Required email
    ${wo_email}     400     Required email
    ${empty_pass}   400     Required pass 
    ${wo_pass}      400     Required pass

*Keywords*
Attempt POST Session
    [Arguments]         ${payload}      ${status_code}      ${error_message}

    ${response}         POST Session    ${payload}

    Status Should Be    ${status_code}  ${response}
    Should Be Equal     ${error_message}    ${response.json()}[error]