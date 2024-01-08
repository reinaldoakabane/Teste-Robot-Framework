*** Settings ***
Library     SeleniumLibrary
Resource    ../../fixtures/index/index.resource
Resource    ../../pages/produtos.robot


*** Keywords ***
Dado que seleciono um produto
     Click Element                                ${BACKPACK}   
Quando clico no botão "adicionar ao carrinho"
     Click Element                                ${CARRINHO}  
Então o item deve ser exibido no carrinho                    
     Element Should Be Visible                    ${QTDE_ITENS}