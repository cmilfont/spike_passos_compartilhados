require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Pessoa do
  before(:each) do
    @valid_attributes = {
      :nome => "value for nome",
      :endereco => "value for endereco"
    }
  end

  it "should create a new instance given valid attributes" do
    Pessoa.create!(@valid_attributes)
  end
end
