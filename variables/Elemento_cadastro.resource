*** Settings ***
Resource     ../utils/Settings.resource


*** Variables ***
${LINK_CADASTRE-SE}      //*[@class="btn btn-link"]
${NOME_COMPLETO}    id=nome
${EMAIL}            id=email
${SENHA}            id=password

${CHECKBOX}                //*[@id="administrador"]

${BOTAO_CADASTRO}         //*[@CLASS="btn btn-primary btn btn-primary"]

${VAlIDAR_MENSAGEM_HOME}      //*[@class="navbar-toggler-icon"]

${BOTAO_ENTRAR}              //*[@class="lead"]

${VALIADAR_MENSAGEM_lOGIN}    //*[@class="jumbotron"]