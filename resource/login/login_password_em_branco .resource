*** Settings ***
Library     SeleniumLibrary
Resource    ../../fixtures/index/index.resource
Resource    ../../pages/login.robot

*** Keywords ***

Quando o usuário insere username  
    [Arguments]                                   ${USERNAME}  
    Click Element                                 ${ELT_USERNAME}  
    Input Text                                    ${ELT_USERNAME}  ${USERNAME} 
E o usuário deixa password em branco                    
    Click Element                                 ${ELT_PASSWORD}
E o usuário clica no botão para fazer o login
    Click Button                                  ${BTT_LOGIN}
Então aplicação apresenta mensagem informando que password em branco
    Element Text Should Be                        ${MSG_ERROR}    Epic sadface: Password is required