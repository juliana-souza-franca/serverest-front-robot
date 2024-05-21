*** Settings ***
Resource       ../utils/Settings.resource
Resource       ../utils/navegador.resource
Resource       ./Cadastro_usuario.resource
Resource       ../variables/Elemento_cadastro.resource

*** Keywords ***
Logar usuario
  Cadastro de Cadastro usuario

   Wait Until Element Is Visible    locator=${EMAIL}
   Input Text    locator=${EMAIL}     text=${EMAIL_DINAMICO}

   Wait Until Element Is Visible    locator=${SENHA} 
   Input Text    locator=${SENHA}      text=${SENHA_DINAMICA}

   Sleep    5
   Wait Until Element Is Visible   locator=${BOTAO_ENTRAR}
   Click Element                     locator=${BOTAO_ENTRAR}

  
 Verificar se o login esta logado com sucesso
   Element Should Be Visible    locator=${VALIADAR_MENSAGEM_lOGIN} 



