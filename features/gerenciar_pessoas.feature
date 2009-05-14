Funcionalidade: Gerenciar Pessoas
  Como um usuário do sistema
  Eu quero gerenciar o cadastro de pessoas
  Para utilizar este cadastro em outros pontos do sistema

  Cenário: Adicionar Pessoa Válida
    Dado que estou no formulário de cadastro de pessoa
    E defino nome com o valor "Fulano de Tal"
    E defino endereco com o valor "Rua Sicrano, 32"
    Quando eu salvar o registro
    Então preciso receber a mensagem "Pessoa Cadastrada com Sucesso."

  Cenário: Listar Pessoas
    Dado que existem 3 pessoas
    Quando eu estiver na listagem de pessoas
    Então preciso ver 3 pessoas

  Cenário: Alterar Pessoa
    Dado que existe um(a) pessoa
    E que eu estou no detalhe de pessoa 1
    E defino nome com o valor "Sicrano de Tal"
    Quando eu salvar o registro
    Então preciso receber a mensagem "Pessoa Alterada com Sucesso."

