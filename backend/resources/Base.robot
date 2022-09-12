*Settings*
Documentation       Base test

Library             RequestsLibrary
Library             factories/Users.py

Resource            routes/SessionsRoute.robot
Resource            routes/UsersRoute.robot
Resource            routes/GeeksRoute.robot

#Carrega o conteudo do arquivo Helpers.robot permitindo acesso a ele e usa-lo
Resource            Helpers.robot 

*Variables*
${API_USERS}        https://getgeeks-user-gustavo.herokuapp.com
${API_GEEKS}        https://getgeeks-geeks-gustavo.herokuapp.com