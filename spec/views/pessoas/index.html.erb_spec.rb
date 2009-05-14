require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pessoas/index.html.erb" do
  include PessoasHelper
  
  before(:each) do
    assigns[:pessoas] = [
      stub_model(Pessoa,
        :nome => "value for nome",
        :endereco => "value for endereco"
      ),
      stub_model(Pessoa,
        :nome => "value for nome",
        :endereco => "value for endereco"
      )
    ]
  end

  it "renders a list of pessoas" do
    render
    response.should have_tag("tr>td", "value for nome".to_s, 2)
    response.should have_tag("tr>td", "value for endereco".to_s, 2)
  end
end

