*** Settings ***

Library             SeleniumLibrary 
Resource            ${EXECDIR}/Pages/trabalhe_conosco.robot
Suite Setup         Open Browser        about:blank         chrome
Suite Teardown      Close Browser


*** Variables ***

${URL}=         https://www.primecontrol.com.br/trabalhe-conosco/



*** Test Cases ***
Test 
    Go To               ${URL}
    Click Element       ${trabalheConosco.btnAccept}
    Click Element       ${trabalheConosco.btnCadastrarCurriculo}
    Switch Window       New
    Input Text          ${trabalheConosco.nome}     ${preencheCampos.nome}
    Input Text          ${trabalheConosco.cargo}    ${preencheCampos.cargo}
    Input Text          ${trabalheConosco.salario}  ${preencheCampos.salario}
    Input Text      ${trabalheConosco.email}     ${preencheCampos.email}
    Input Text      ${trabalheConosco.telefone}  ${preencheCampos.telefone}
    Select From LIst By Value   ${trabalheConosco.cmbPais}  ${preencheCampos.cmbPais}
    Input Text      ${trabalheConosco.estado}    ${preencheCampos.estado}
    Input Text      ${trabalheConosco.cidade}    ${preencheCampos.cidade}
    Input Text      ${trabalheConosco.bairro}    ${preencheCampos.bairro}
    Input Text      ${trabalheConosco.endeceo}   ${preencheCampos.endereco}
    Input Text      ${trabalheConosco.cep}   ${preencheCampos.cep}
    Input Text      ${trabalheConosco.resumo}    ${preencheCampos.resumo}
    Choose File     ${trabalheConosco.curriculo}    ${EXECDIR}/Curriculo.pdf
    Wait Until Page Contains        Curriculo       30    
    Scroll Element Into View        ${trabalheConosco.btnFinalizar}
    Click Element       ${trabalheConosco.btnFinalizar}
    Wait Until Element Contains     ${trabalheConosco.sucesso} ${preencheCampos.sucesso} 30
 




