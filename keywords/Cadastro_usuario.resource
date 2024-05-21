*** Settings ***
Resource         ../utils/Settings.resource
Resource         ../utils/navegador.resource
Resource         ../variables/Elemento_cadastro.resource
Resource         ./massa_dados.resource

Library    Collections

*** Keywords ***

 Cadastro de Cadastro usuario
   abrir o navegado
   
   massa dinamica
   Sleep    5
   Element Should Be Visible     locator=${LINK_CADASTRE-SE}
   Click Element                 locator=${LINK_CADASTRE-SE}

   Wait Until Element Is Visible    locator=${NOME_COMPLETO}
   Input Text                       locator=${NOME_COMPLETO}     text=${FULLNAME}
   
   Wait Until Element Is Visible    locator=${EMAIL}
   Input Text    locator=${EMAIL}     text=${EMAIL_DINAMICO} 

   Wait Until Element Is Visible    locator=${SENHA} 
   Input Text    locator=${SENHA}      text=${SENHA_DINAMICA}

   Element Should Be Visible     locator=${CHECKBOX}
   Click Element                 locator=${CHECKBOX}

   Element Should Be Visible     locator=${BOTAO_CADASTRO}
   Click Element                 locator=${BOTAO_CADASTRO}


Verificar se o cadastro foi realizado com sucesso
  Element Should Not Be Visible   locator=${VAlIDAR_MENSAGEM_HOME}                 

   fechar o navegado