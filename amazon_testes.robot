
*** Settings ***
Documentation    Essa suite testa o site da amazon.com.br
Resource           amazon_resources.robot
Test Setup         Abrir o navegador
# Test Teardown    Fechar o navegador



*** test cases ***

caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Este teste verifica o menu de eletronicos do site da Amazon.com.br
    ...                e verificar a categoria Computadores e Informatica     
    [Tags]             menus   categorias
    Acessar a home page do site Amazon.com.br
    Verificar se o titulo da pagina fica " Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais."
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o titulo da pagina fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Coputadores e Informatica"
    Verificar se aparece a categoria "tablets"


caso de teste 02 - Pesquisa de Produtos 
    [Documentation]     Este teste verifica a busca de um produto 
    [Tags]              Busca_produtos     lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de Pesquisa
    Clicar no botão de pesquisa 
    # Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
