*** Settings ***

Resource            ../resource/login/setup.resource
Resource            ../fixtures/index/index.resource
Resource            ../resource/carrinho/adionar_produto.resource
Resource            ../resource/carrinho/setup.resource
Resource            ../resource/carrinho/remover_produto.resource
Resource            ../resource/carrinho/finalizar_compra.resource


Suite Setup        Inicio Login Válido
Suite Teardown     Fim Login Válido

Test Setup         Inicio carrinho
Test Teardown      Final carrinho

*** Test Cases *** 

#Eu como usuário, desejo adicionar itens em meu carrinho de compras
#Funcionalidade: Carrinho de compra

Cenário 01: Usuário adiciona um item ao carrinho com sucesso
    Dado que seleciono um produto
    Quando clico no botão "adicionar ao carrinho"
    Então o item deve ser exibido no carrinho

Cenário 02: Usuário remove um item do carrinho com sucesso
    Dado que um produto esta selecionado
    Quando clico no botão "remover do carrinho"
    Então o item deve ser removido no carrinho 

Cenário 03: Usuário finaliza compra
    Dado que adiciono um item no carrinho 
    E clico no carrinho   
    Quando clico no botão checkout
    E informo dados pessoais
    E clico no botão continuar
    E clico no botão finalizar 
    Então aplicação apresenta mensagem de compra efetuada     

