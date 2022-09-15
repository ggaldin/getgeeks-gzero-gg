robot -l NONE -o NONE -r NONE tasks/Delorean.robot
pabot -d ./logs -v BROWSER:chromium -v HEADLESS:False tests

rm -rf ./logs/browser
mkdir ./logs/browser
mkdir ./logs/browser/screenshot
cp $(find ./logs/pabot_results -type f -name "*.png") ./logs/browser/screenshot



#robot -d ./logs -v BROWSER:chromium -v HEADLESS:True tests/AttemptBeGeek.robot
#robot -d ./logs -v BROWSER:chromium -v HEADLESS:False tests
#robot -d ./logs -i smoke tests
#robot -d ./logs -i empty_whats tests/BeGeek.robot
#robot -d ./logs tests
#robot -d ./logs tests/BeGeek.robot
#robot -d ./logs -i temp tests/Login.robot
#robot -d ./logs -i i_email tests/Login.robot
#robot -d ./logs -i i_pass -i user_404 tests/Login.robot
#robot -d ./logs tests/Login.robot
#robot -d ./logs -i reqf tests/Signup.robot
#robot -d ./logs -i short_pass tests/Signup.robot 
#robot -d ./logs tests/Signup.robot
#robot -d ./logs -i dup_email tests/Signup.robot