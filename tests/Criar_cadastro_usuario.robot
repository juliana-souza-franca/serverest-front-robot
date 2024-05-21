*** Settings ***
Resource      ../keywords/Cadastro_usuario.resource



*** Test Cases ***
cenario: Cadastrar usuário
  Cadastro de Cadastro usuario
  Verificar se o cadastro foi realizado com sucesso
  
