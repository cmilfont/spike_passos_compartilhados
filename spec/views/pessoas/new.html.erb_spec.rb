require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pessoas/new.html.erb" do
  include PessoasHelper
  
  before(:each) do
    assigns[:pessoa] = stub_model(Pessoa,
      :new_record? => true,
      :nome => "value for nome",
      :endereco => "value for endereco"
    )
  end

  it "renders new pessoa form" do
    render
    
    response.should have_tag("form[action=?][method=post]", pessoas_path) do
      with_tag("input#pessoa_nome[name=?]", "pessoa[nome]")
      with_tag("input#pessoa_endereco[name=?]", "pessoa[endereco]")
    end
  end
end


