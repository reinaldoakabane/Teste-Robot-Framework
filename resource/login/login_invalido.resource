*** Settings ***
Library     SeleniumLibrary
Resource    ../../fixtures/index/index.resource
Resource    ../../pages/login.robot

*** Keywords ***

Dado que o usuário está na página de login 
     Wait Until Element Is Visible                ${LOGO}   
Quando o usuário insere username inválido  
     [Arguments]                                  ${USERNAME}  
     Click Element                                ${ELT_USERNAME}  
     Input Text                                   ${ELT_USERNAME}  abcd
E um password inválido                     
     [Arguments]                                  ${PASSWORD}
     Click Element                                ${ELT_PASSWORD}
     Input Text                                   ${ELT_PASSWORD}  dcba
E o usuário clica no botão de login
     Click Button                                 ${BTT_LOGIN}
Então aplicação deve apresentar mensagem de erro
    Wait Until Element Is Visible                 ${MSG_ERROR}   