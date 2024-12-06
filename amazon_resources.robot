
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
    Go To    url={$URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
   

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}


Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}
    

verificar se o titulo da pagina fica "${TITULO}"
    Title Should Be    title=${TITULO}


