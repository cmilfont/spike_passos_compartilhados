require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PessoasController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "pessoas", :action => "index").should == "/pessoas"
    end
  
    it "maps #new" do
      route_for(:controller => "pessoas", :action => "new").should == "/pessoas/new"
    end
  
    it "maps #show" do
      route_for(:controller => "pessoas", :action => "show", :id => "1").should == "/pessoas/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "pessoas", :action => "edit", :id => "1").should == "/pessoas/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "pessoas", :action => "create").should == {:path => "/pessoas", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "pessoas", :action => "update", :id => "1").should == {:path =>"/pessoas/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "pessoas", :action => "destroy", :id => "1").should == {:path =>"/pessoas/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/pessoas").should == {:controller => "pessoas", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/pessoas/new").should == {:controller => "pessoas", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/pessoas").should == {:controller => "pessoas", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/pessoas/1").should == {:controller => "pessoas", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/pessoas/1/edit").should == {:controller => "pessoas", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/pessoas/1").should == {:controller => "pessoas", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/pessoas/1").should == {:controller => "pessoas", :action => "destroy", :id => "1"}
    end
  end
end
