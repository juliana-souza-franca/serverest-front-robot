*** Settings ***
Resource           ./Settings.resource
Resource           ../variables/acesso_serverest.resource

*** Keywords ***

abrir o navegado
   Open Browser    browser=${headlesschrome}
  # Maximize Browser Window
   Go To     url=${URL}
fechar o navegado 
   Close Browser
