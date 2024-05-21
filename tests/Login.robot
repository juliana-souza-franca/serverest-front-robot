*** Settings ***
Resource     ../keywords/Login.resource


*** Test Cases ***
cenario: Logar como usuario
  Logar usuario
  Verificar se o login esta logado com sucesso
  