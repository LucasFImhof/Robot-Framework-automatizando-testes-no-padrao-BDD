*** Settings ***
Library          SeleniumLibrary
Library          FakerLibrary    locale=pt_BR
Resource         setup_teardown.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador

*** Variables ***
${CAMPO_NOME}      id:form-nome
${CAMPO_CARGO}     id:form-cargo
${CAMPO_IMAGEM}    id:form-imagem
${CAMPO_TIME}      class:lista-suspensa
${CAMPO_CARD}      id:form-botao 
${PROGRAMACAO}     //option[contains(.,'Programação')]
${FRONT-END}       //option[contains(.,'Front-End')]
${DADOS}           //option[contains(.,'Data Science')]
${DEVOPS}          //option[contains(.,'Devops')]
${UX}              //option[contains(.,'UX e Design')]
${MOBILE}          //option[contains(.,'Mobile')]
${INOVACAO}        //option[contains(.,'Inovação')]

*** Test Cases ***

Verificar se é possivel criar mais de um card se preenchermos os campos corretamente
    Dado que eu preencha os campos do formulário
    E clique no botão criar card
    Então identificar 3 cards no time esperado

*** Keywords ***

Dado que eu preencha os campos do formulário
    ${Nome}             FakerLibrary.First Name
    Input Text          ${CAMPO_NOME}        ${Nome}
    ${Cargo}            FakerLibrary.Job
    Input Text          ${CAMPO_CARGO}      ${Cargo}
    ${Imagem}           FakerLibrary.Image Url
    Input Text          ${CAMPO_IMAGEM}     ${Imagem}
    Click Element       ${CAMPO_TIME}
    Click Element       ${PROGRAMACAO}

E clique no botão criar card    
    Click Element    ${CAMPO_CARD}

Então identificar 3 cards no time esperado
    Element Should Be Visible    class:colaborador

Então criar card e identificar 1 card em cada time disponível
    FOR    ${i}    IN RANGE    1    3
                Dado que eu preencha os campos do formulário
                    E clique no botão criar card
    END
    Sleep 10s