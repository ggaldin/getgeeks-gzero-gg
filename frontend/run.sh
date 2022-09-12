robot -l NONE -o NONE -r NONE tasks/Delorean.robot
robot -d ./logs -i i_email tests/Login.robot
#robot -d ./logs -i i_pass -i user_404 tests/Login.robot
#robot -d ./logs tests/Login.robot
#robot -d ./logs -i reqf tests/Signup.robot
#robot -d ./logs -i short_pass tests/Signup.robot 
#robot -d ./logs tests/Signup.robot
#robot -d ./logs -i dup_email tests/Signup.robot