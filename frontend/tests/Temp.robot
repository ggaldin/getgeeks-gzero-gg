*Settings*
Documentation   Temp

Library     Collections

*Test Cases*
Trabalhando com Listas

    @{avengers}     Create List     Tony Sterco     Kamalalhan  Steve Rogers 

    Append To List  ${avengers}     Bruce Biba
    Append To List  ${avengers}     Scott Lang
    # Log To Console  ${avengers} 
    # Log To Console  ${avengers}[0]
    # Log To Console  ${avengers}[1]
    # Log To Console  ${avengers}[2]
    # Log To Console  ${avengers}[3]

    FOR     ${a}    IN      @{avengers}
        
        Log To Console      ${a}

    END

    @{avengers2}    Create List      Tony Sterco     Miss Marvel     Steve Rogers        Bruce Biba      Scott Lang

    Lists Should Be Equal       ${avengers}     ${avengers2}