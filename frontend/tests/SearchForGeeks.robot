*Settings*
Documentation       Search for Geeks Teste suit

Resource            ${EXECDIR}/resources/Base.robot

Test Setup          Start Session
Test Teardown       After Test

*Test Cases*
Search for Alien Geek

   ${alien}         Factory User    search_alien
   Create Geek Profile Service      ${alien} 

   ${searcher}      Factory User    searcher
   Do Login         ${searcher}

   Go To Geeks
   Fill Search Form     Sim     3D
   Submit Search Form

   Geek Should Be Found     ${alien}
   Alien Icon Should Be Visible

#Temporario
   #Sleep    7   

Search for Common Geek

   ${common}         Factory User    search_common
   Create Geek Profile Service      ${common} 

   ${searcher}      Factory User    searcher
   Do Login         ${searcher}

   Go To Geeks
   Fill Search Form     Não     PC X86 ou X64
   Submit Search Form

   Geek Should Be Found     ${common}

Search not found

   ${searcher}      Factory User    searcher
   Do Login         ${searcher}

   Go To Geeks
   Fill Search Form     Não     Conserto Game Atari da Polivox
   Submit Search Form

   Geek Not Found