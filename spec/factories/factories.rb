# Isto irá definir a classe de Pessoa
Factory.define :pessoa do |p|
    p.nome 'Fulano'
    p.endereco  'Rua Sicrano'
end

Factory.define :cidade do |c|
    c.nome 'Cidade'
    c.uf  'UF'
end

