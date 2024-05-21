*** Settings ***
Resource      ../utils/Settings.resource



*** Keywords ***  
massa dinamica
    ${palavra_randomica}        Generate Random String      length=20    chars=LETTERS
    ${palavra_randomica_email}  Generate Random String    length=10    chars=\[LETTERS]\[NUMBERS]
    ${palavra_randomica_senha}=     Generate Random String    length=8   chars=[NUMBERS]
    ${palavra_randomica}=          Convert To Lower Case    ${palavra_randomica}
    ${palavra_randomica_email}=    Convert To Lower Case    ${palavra_randomica_email}

        Set Test Variable    ${FULLNAME}    ${palavra_randomica}
        Log    ${FULLNAME}
        Set Test Variable    ${EMAIL_DINAMICO}    ${palavra_randomica_email}@gmail.com
        Log   ${EMAIL_DINAMICO} 
        Set Test Variable    ${SENHA_DINAMICA}    ${palavra_randomica_senha}
        Log    ${SENHA_DINAMICA}  