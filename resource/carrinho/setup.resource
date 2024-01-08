*** Settings ***
Library     SeleniumLibrary
Resource    ../../fixtures/index/index.resource
Resource    ../../pages/login.robot
Resource    ../../pages/produtos.robot


*** Keywords ***

Inicio Login Válido
    Open Browser      about:blank                    ${BROWSER}
    Maximize Browser Window
    Sleep                            5s

Fim Login Válido
    Close All Browsers

Inicio carrinho
    Go To                                            ${URL}                  
    Set Selenium Speed               0.1
    Wait Until Element Is Visible                    ${ELT_USERNAME}
    Wait Until Element Is Visible                    ${ELT_PASSWORD}
    Click Element                                    ${ELT_USERNAME}  
    Input Text                                       ${ELT_USERNAME}  ${USERNAME}                
    Click Element                                    ${ELT_PASSWORD}
    Input Text                                       ${ELT_PASSWORD}  ${PASSWORD}
    Click Button                                     ${BTT_LOGIN}
    Wait Until Element Is Visible                    ${PRODUCTS}
Final carrinho
    Capture Page Screenshot 

