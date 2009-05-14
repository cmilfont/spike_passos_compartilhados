Funcionalidade: Gerenciar Cidade
  Como um usuário do sistema
  Eu quero gerenciar o cadastro de cidades
  Para utilizar este cadastro em outros pontos do sistema

  Cenário: Adicionar Cidade Válida
    Dado que estou no formulário de cadastro de cidade
    E defino nome com o valor "Iguatu"
    E defino uf com o valor "CE"
    Quando eu salvar o registro
    Então preciso receber a mensagem "Cidade Cadastrada com Sucesso."

  Cenário: Listar Cidades
    Dado que existem 3 cidades
    Quando eu estiver na listagem de cidades
    Então preciso ver 3 cidades

  Cenário: Alterar Cidade
    Dado que existe um(a) cidade
    E que eu estou no detalhe de cidade 1
    E defino nome com o valor "Acopiara"
    Quando eu salvar o registro
    Então preciso receber a mensagem "Cidade Alterada com Sucesso."

