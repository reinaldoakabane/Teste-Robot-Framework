*** Settings ***

Resource            ../resource/login/login_valido.resource
Resource            ../resource/login/login_invalido.resource
Resource            ../fixtures/index/index.resource
Resource            ../resource/login/setup.resource
Resource            ../resource/login/login_password_em_branco .resource
Resource            ../resource/login/login_username_em_branco.resource

Suite Setup        Inicio Login
Suite Teardown     Fim Login

Test Setup         Inicio Teste Login
Test Teardown      Final Teste Login

*** Test Cases ***

#Eu como usuário, quero logar na aplicação Swag Labs para realizar compras
#Contexto: Dado que estou na tela de login

Cenário 01: Usuário realiza login com credenciais válidas    
  Quando o usuário insere username válido              ${USERNAME} 
  E um password válido                                 ${PASSWORD}  
  E o usuário clica no botão para logar
  Então o usuário deve ser redirecionado para a página inicial

Cenário 02: Usuário realiza login com credenciais inválidas
  Quando o usuário insere username inválido            ${USERNAME} 
  E um password inválido                               ${PASSWORD}  
  E o usuário clica no botão de login
  Então aplicação deve apresentar mensagem de erro

Cenário 03: Usuário realiza login com campo username em branco
  Quando o usuário deixa username em branco         
  E informa um password                                ${PASSWORD}  
  E o usuário clica no botão de logar
  Então aplicação apresenta mensagem informando que username em branco

Cenário 04: Usuário realiza login com campo password em branco
  Quando o usuário insere username                     ${USERNAME} 
  E o usuário deixa password em branco              
  E o usuário clica no botão para fazer o login
  Então aplicação apresenta mensagem informando que password em branco