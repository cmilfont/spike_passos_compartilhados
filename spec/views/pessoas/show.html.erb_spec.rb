require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pessoas/show.html.erb" do
  include PessoasHelper
  before(:each) do
    assigns[:pessoa] = @pessoa = stub_model(Pessoa,
      :nome => "value for nome",
      :endereco => "value for endereco"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ nome/)
    response.should have_text(/value\ for\ endereco/)
  end
end

