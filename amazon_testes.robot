*** Settings ***
Documentation
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


Library    SeleniumLibrary

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Este teste verifica o menu eletrônicos do site da Amazon.com.br
    ...                e verifica a categoria computadores e informática
    [Tags]             menu    categoria
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se aparece a categoria "Computadores e Informática"




    

Caso de teste 02 - Pesquisa de um Produto
    [Documentation]    Este teste verifica a busca de produtos
    [Tags]             busca_produtos    lista_produtos
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto pesquisado



    