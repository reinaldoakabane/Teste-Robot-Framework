*** Settings ***

Library     SeleniumLibrary
Resource    ../../fixtures/index/index.resource
Resource    ../../pages/login.robot


*** Keywords ***

Inicio Login     
    Open Browser      about:blank            ${BROWSER}
    Maximize Browser Window
    Sleep                                    5s

Fim Login
    Close All Browsers

Inicio Teste Login
    Go To                                    ${URL}                  
    Set Selenium Speed                       0.1
    Wait Until Element Is Visible            ${ELT_USERNAME}
    Wait Until Element Is Visible            ${ELT_PASSWORD}

Final Teste Login
    Capture Page Screenshot

