
*** Settings ***
Library    SeleniumLibrary
Library    XML


*** Variables ***
${BROWSER}                chrome
${URL}                    http://www.amazon.com.br
${MENU_ELETRONICOS}       //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}    //h1[contains(.,'Eletrônicos e Tecnoligia')]


*** Keywords ***
Abrir o navegador    
    Open Browser   browser=${BROWSER}  options=add_experimental_option("detach", True)
    Maximize Browser Window
    


Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To     url=${URL}
    ${variable}=    Sleep  25s
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
   

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}


Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}
    

verificar se o titulo da pagina fica "${TITULO}"
    Title Should Be    title=${TITULO}

verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//a[@area-label='${NOME_CATEGORIA}']


Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtexbox    text=${PRODUTO}


Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button



Verificar o resultado da pesquisa se está listando o "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[3]    
    

#GHERSKIN STEPS

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Verificar se o titulo da pagina fica " Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais."


Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"


Então o titulo da pagina deve ficar "Eletrônicos e Tecnologia" | Amazon.com.br
    Verificar se o titulo da pagina fica "Eletrônicos e Tecnologia | Amazon.com.br"


E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

E a categoria "Computadores e Informática" deve ser exibido na página
    Verificar se aparece a categoria "Coputadores e Informatica"