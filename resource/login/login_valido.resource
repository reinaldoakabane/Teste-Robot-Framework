*** Settings ***
Library     SeleniumLibrary
Resource    ../../fixtures/index/index.resource
Resource    ../../pages/login.robot

*** Keywords ***
Dado que o usuário está na página para realizar de login
     Wait Until Element Is Visible             ${LOGO}   
Quando o usuário insere username válido
     [Arguments]                               ${USERNAME}  
     Click Element                             ${ELT_USERNAME}  
     Input Text                                ${ELT_USERNAME}  ${USERNAME} 
E um password válido                     
     [Arguments]                               ${PASSWORD}
     Click Element                             ${ELT_PASSWORD}
     Input Text                                ${ELT_PASSWORD}  ${PASSWORD}
E o usuário clica no botão para logar
     Click Button                              ${BTT_LOGIN}
Então o usuário deve ser redirecionado para a página inicial
     Wait Until Element Is Visible             ${PRODUCTS}     