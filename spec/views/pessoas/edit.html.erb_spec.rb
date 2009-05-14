require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pessoas/edit.html.erb" do
  include PessoasHelper
  
  before(:each) do
    assigns[:pessoa] = @pessoa = stub_model(Pessoa,
      :new_record? => false,
      :nome => "value for nome",
      :endereco => "value for endereco"
    )
  end

  it "renders the edit pessoa form" do
    render
    
    response.should have_tag("form[action=#{pessoa_path(@pessoa)}][method=post]") do
      with_tag('input#pessoa_nome[name=?]', "pessoa[nome]")
      with_tag('input#pessoa_endereco[name=?]', "pessoa[endereco]")
    end
  end
end


