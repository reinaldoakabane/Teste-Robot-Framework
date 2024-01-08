*** Settings ***
Library     SeleniumLibrary
Resource    ../../fixtures/index/index.resource
Resource    ../../pages/produtos.robot


*** Keywords ***
Dado que adiciono um item no carrinho
    Click Element                                ${BACKPACK} 
E clico no carrinho    
    Click Element                                ${MEU_CARRINHO}
Quando clico no botão checkout
    Click Button                                 ${CHECKOUT}  
E informo dados pessoais
    Input Text                                   ${FIRST_NAME}      QA
    Input Text                                   ${LAST_NAME}       TESTER
    Input Text                                   ${POSTAL_CODE}     18120000
E clico no botão continuar        
    Click Button                                 ${BTT_CONTINUE}
E clico no botão finalizar           
    Click Button                                 ${BTT_FINALIZAR}    
Então aplicação apresenta mensagem de compra efetuada     
    Element Should Be Visible                    ${IMG_CKECK}   

