require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/cidades/index.html.erb" do
  include CidadesHelper
  
  before(:each) do
    assigns[:cidades] = [
      stub_model(Cidade,
        :nome => "value for nome",
        :uf => "value for uf"
      ),
      stub_model(Cidade,
        :nome => "value for nome",
        :uf => "value for uf"
      )
    ]
  end

  it "renders a list of cidades" do
    render
    response.should have_tag("tr>td", "value for nome".to_s, 2)
    response.should have_tag("tr>td", "value for uf".to_s, 2)
  end
end

