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

Do Login
    [Arguments]     ${user}

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials
    User Should Be Logged In    ${user}  