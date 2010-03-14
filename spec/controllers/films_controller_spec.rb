require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe FilmsController do

  def mock_film(stubs={})
    @mock_film ||= mock_model(Film, stubs)
  end

  describe "GET index" do
    it "assigns all films as @films" do
      Film.stub!(:find).with(:all).and_return([mock_film])
      get :index
      assigns[:films].should == [mock_film]
    end
  end

  describe "GET show" do
    it "assigns the requested film as @film" do
      Film.stub!(:find).with("37").and_return(mock_film)
      get :show, :id => "37"
      assigns[:film].should equal(mock_film)
    end
  end

  describe "GET new" do
    it "assigns a new film as @film" do
      Film.stub!(:new).and_return(mock_film)
      get :new
      assigns[:film].should equal(mock_film)
    end
  end

  describe "GET edit" do
    it "assigns the requested film as @film" do
      Film.stub!(:find).with("37").and_return(mock_film)
      get :edit, :id => "37"
      assigns[:film].should equal(mock_film)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created film as @film" do
        Film.stub!(:new).with({'these' => 'params'}).and_return(mock_film(:save => true))
        post :create, :film => {:these => 'params'}
        assigns[:film].should equal(mock_film)
      end

      it "redirects to the created film" do
        Film.stub!(:new).and_return(mock_film(:save => true))
        post :create, :film => {}
        response.should redirect_to(film_url(mock_film))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved film as @film" do
        Film.stub!(:new).with({'these' => 'params'}).and_return(mock_film(:save => false))
        post :create, :film => {:these => 'params'}
        assigns[:film].should equal(mock_film)
      end

      it "re-renders the 'new' template" do
        Film.stub!(:new).and_return(mock_film(:save => false))
        post :create, :film => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested film" do
        Film.should_receive(:find).with("37").and_return(mock_film)
        mock_film.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :film => {:these => 'params'}
      end

      it "assigns the requested film as @film" do
        Film.stub!(:find).and_return(mock_film(:update_attributes => true))
        put :update, :id => "1"
        assigns[:film].should equal(mock_film)
      end

      it "redirects to the film" do
        Film.stub!(:find).and_return(mock_film(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(film_url(mock_film))
      end
    end

    describe "with invalid params" do
      it "updates the requested film" do
        Film.should_receive(:find).with("37").and_return(mock_film)
        mock_film.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :film => {:these => 'params'}
      end

      it "assigns the film as @film" do
        Film.stub!(:find).and_return(mock_film(:update_attributes => false))
        put :update, :id => "1"
        assigns[:film].should equal(mock_film)
      end

      it "re-renders the 'edit' template" do
        Film.stub!(:find).and_return(mock_film(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested film" do
      Film.should_receive(:find).with("37").and_return(mock_film)
      mock_film.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the films list" do
      Film.stub!(:find).and_return(mock_film(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(films_url)
    end
  end

end
