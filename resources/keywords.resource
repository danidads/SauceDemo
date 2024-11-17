
*** Settings ***
Resource    ../resources/resources.resource

*** Keywords ***
Abrir o navegador
   Open Browser    browser=${BROWSER}
   Go To           url=${URL}
   Maximize Browser Window

Fechar o navegador
   Close Browser


