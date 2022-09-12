*Settings*
Documentation       Test Helpers

*Keywords*
Add User From Database
    [Arguments]     ${user}

    Connect To Postgres
    Insert User     ${user}
    Disconnect From Database

    # Go to Signup Form 
    # Fill Signup Form  ${user} 
    # Submit Signup Form
    # User Should Be Registered