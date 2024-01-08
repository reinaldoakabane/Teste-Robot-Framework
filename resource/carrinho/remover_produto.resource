*** Settings ***
Library     SeleniumLibrary
Resource    ../../fixtures/index/index.resource
Resource    ../../pages/produtos.robot


*** Keywords ***
Dado que um produto esta selecionado
     Click Element                            ${BACKPACK}   
Quando clico no botão "remover do carrinho"
     Click Element                            ${REMOVE}  
Então o item deve ser removido no carrinho                     
     Element Should Not Be Visible            ${QTDE_ITENS}