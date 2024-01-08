*** Settings ***
Library     SeleniumLibrary
Resource    ../../fixtures/index/index.resource
Resource    ../../pages/login.robot

*** Keywords ***

Dado que o usuário está na página de login 
    Wait Until Element Is Visible                 ${LOGO}   
Quando o usuário deixa username em branco 
    Click Element                                 ${ELT_USERNAME}
E informa um password                    
    [Arguments]                                   ${PASSWORD}
    Click Element                                 ${ELT_PASSWORD}
    Input Text                                    ${ELT_PASSWORD}  dcba
E o usuário clica no botão de logar
    Click Button                                   ${BTT_LOGIN}
Então aplicação apresenta mensagem informando que username em branco
    Element Text Should Be                         ${MSG_ERROR}    Epic sadface: Username is required