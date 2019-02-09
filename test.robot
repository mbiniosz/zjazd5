***Settings***
Library    SSHLibrary
Library    Selenium2Library



***Variable***
${zmienna1}    Klocki_lego
${REMOTE_HOST}    127.0.0.1
${REMOTE_USERNAME}    tester
${REMOTE_PASSWORD}    tester
${okno_logowania}    //*[@id="login"]    
${login}    testerwsb_t1
${okno_hasla}     //*[@id="password"]
${haslo}    adam1234
${zaloguj}    //*[@id="btnSubmit"]    




***Test Cases ***
Nazwa mocno elokwentna
    my log
Druga proba
    Log To Console    Hello to ja!
Trzecia proba
    my log2    ${zmienna1}
Nowy przypadek testowy z ssh
    Otworz polaczenie z maszyna
    Zaloguj sie na maszynie
    Wywolanie komendy i sprawdzenie poprawnosci wynikow
    Zamkniecie polaczenia
Pierwszy test na zabawy z Selenium
    Otworz przegladarke
    Przejscie na strone poczta.wp.pl
    Wprowadzenie poprawnego loginu
    Wprowadzenie poprawnego hasla
    Zalogowanie sie
    Sprawdzenie czy jest slowo Odebrane
    Wylaczenie przegladarki



***Keywords***
my log
    Log To Console    Hello to ja!
my log2
    [Arguments]    ${zmienna1}
    Log to Console    ${zmienna1}

Otworz polaczenie z maszyna
    Open Connection    ${REMOTE_HOST}

Zaloguj sie na maszynie
    Login    ${REMOTE_USERNAME}    ${REMOTE_PASSWORD}

Wywolanie komendy i sprawdzenie poprawnosci wynikow
    ${rc}=    Execute Command     uname -a    
    Should Not Be Empty    ${rc}
    Should Contain    ${rc}     Linux
Zamkniecie polaczenia
    Close All Connections
Otworz przegladarke
    Open Browser    http:/google.pl
Przejscie na strone poczta.wp.pl
    Go To    https://poczta.wp.pl
Wprowadzenie poprawnego loginu
    Input Text    ${okno_logowania}    ${login}
Wprowadzenie poprawnego hasla    
    Input Text    ${okno_hasla}    ${haslo}
Zalogowanie sie
    Click Button    ${zaloguj}
Sprawdzenie czy jest slowo odebrane
    Page Should Contain     Odebrane
    Sleep     20
Wylaczenie przegladarki
    Close All Browsers

