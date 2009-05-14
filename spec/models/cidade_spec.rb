require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Cidade do
  before(:each) do
    @valid_attributes = {
      :nome => "value for nome",
      :uf => "value for uf"
    }
  end

  it "should create a new instance given valid attributes" do
    Cidade.create!(@valid_attributes)
  end
end
