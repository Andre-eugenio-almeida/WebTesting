
*** Settings ***
Documentation    Essa suite testa o site da amazon.com.br
Resource           amazon_resources.robot
Test Setup         Abrir o navegador
Test Teardown    Fechar o navegador



*** test cases ***

caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Este teste verifica o menu de eletronicos do site da Amazon.com.br
    ...                e verificar a categoria Computadores e Informatica     
    [Tags]             menus   categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o titulo da pagina deve ficar "Eletrônicos e Tecnologia" | Amazon.com.br
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibido na página

   

caso de teste 02 - Pesquisa de Produtos 
    [Documentation]     Este teste verifica a busca de um produto 
    [Tags]              Busca_produtos     lista_busca
    Dado que estou na home page da Amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de Pesquisa
    # E um produto da lista "Xbox Series S" deve ser mostrado na pagina
   
