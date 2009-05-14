require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PessoasController do

  def mock_pessoa(stubs={})
    @mock_pessoa ||= mock_model(Pessoa, stubs)
  end
  
  describe "GET index" do
    it "assigns all pessoas as @pessoas" do
      Pessoa.stub!(:find).with(:all).and_return([mock_pessoa])
      get :index
      assigns[:pessoas].should == [mock_pessoa]
    end
  end

  describe "GET show" do
    it "assigns the requested pessoa as @pessoa" do
      Pessoa.stub!(:find).with("37").and_return(mock_pessoa)
      get :show, :id => "37"
      assigns[:pessoa].should equal(mock_pessoa)
    end
  end

  describe "GET new" do
    it "assigns a new pessoa as @pessoa" do
      Pessoa.stub!(:new).and_return(mock_pessoa)
      get :new
      assigns[:pessoa].should equal(mock_pessoa)
    end
  end

  describe "GET edit" do
    it "assigns the requested pessoa as @pessoa" do
      Pessoa.stub!(:find).with("37").and_return(mock_pessoa)
      get :edit, :id => "37"
      assigns[:pessoa].should equal(mock_pessoa)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created pessoa as @pessoa" do
        Pessoa.stub!(:new).with({'these' => 'params'}).and_return(mock_pessoa(:save => true))
        post :create, :pessoa => {:these => 'params'}
        assigns[:pessoa].should equal(mock_pessoa)
      end

      it "redirects to the created pessoa" do
        Pessoa.stub!(:new).and_return(mock_pessoa(:save => true))
        post :create, :pessoa => {}
        response.should redirect_to(pessoa_url(mock_pessoa))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved pessoa as @pessoa" do
        Pessoa.stub!(:new).with({'these' => 'params'}).and_return(mock_pessoa(:save => false))
        post :create, :pessoa => {:these => 'params'}
        assigns[:pessoa].should equal(mock_pessoa)
      end

      it "re-renders the 'new' template" do
        Pessoa.stub!(:new).and_return(mock_pessoa(:save => false))
        post :create, :pessoa => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested pessoa" do
        Pessoa.should_receive(:find).with("37").and_return(mock_pessoa)
        mock_pessoa.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :pessoa => {:these => 'params'}
      end

      it "assigns the requested pessoa as @pessoa" do
        Pessoa.stub!(:find).and_return(mock_pessoa(:update_attributes => true))
        put :update, :id => "1"
        assigns[:pessoa].should equal(mock_pessoa)
      end

      it "redirects to the pessoa" do
        Pessoa.stub!(:find).and_return(mock_pessoa(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(pessoa_url(mock_pessoa))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested pessoa" do
        Pessoa.should_receive(:find).with("37").and_return(mock_pessoa)
        mock_pessoa.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :pessoa => {:these => 'params'}
      end

      it "assigns the pessoa as @pessoa" do
        Pessoa.stub!(:find).and_return(mock_pessoa(:update_attributes => false))
        put :update, :id => "1"
        assigns[:pessoa].should equal(mock_pessoa)
      end

      it "re-renders the 'edit' template" do
        Pessoa.stub!(:find).and_return(mock_pessoa(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested pessoa" do
      Pessoa.should_receive(:find).with("37").and_return(mock_pessoa)
      mock_pessoa.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the pessoas list" do
      Pessoa.stub!(:find).and_return(mock_pessoa(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(pessoas_url)
    end
  end

end
