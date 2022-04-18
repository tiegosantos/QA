*** Variables ***


&{trabalheConosco}
...     btnAccept=//a[contains(.,'CADASTRE SEU CURRÍCULO')]
...     btnCadastrarCurriculo=//a[text()='CADASTRE SEU CURRÍCULO']
...     nome=//*[@id="name"] 
...     cargo=//*[@id="headline"]
...     salario=//*[@id="salary"]
...     email=//*[@id="email"]
...     telefone=//*[@id="phone-0"]
...     cmbPais=//*[@id="country"]
...     estado=//*[@id="region"]
...     cidade=//*[@id="city"]
...     bairro=//*[@id="neighborhood"]
...     endeceo=//*[@id="address"]
...     cep=//*[@id="zipcode"]
...     resumo=//*[@id="summary"]
...     btnAddFormacao=//button[text()='+ Adicionar formação']
...     curriculo=//*[@id="validatedCustomFile"]
...     btnFinalizar=//span[contains(.,'Finalizar')]                   
...     sucesso=//*[text()='com sucesso']


&{preencheCampos}
...     nome=Tiego Pereira Santos
...     cargo=Analista de teste
...     salario=15.000,00
...     email=tiegogalo@hotmail.comr
...     telefone=31 9 99348-5451
...     cmbPais=BR
...     estado=MG
...     cidade=Belo Horizonte
...     bairro=Goainia
...     endereco=Rua E
...     cep=31960360
...     resumo=Curriculo Enviado com Robot FrameWork, Projeto Qa.Coders 2022
...     sucesso=sucesso