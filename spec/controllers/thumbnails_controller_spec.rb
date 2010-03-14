require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ThumbnailsController do

  def mock_thumbnail(stubs={})
    @mock_thumbnail ||= mock_model(Thumbnail, stubs)
  end

  describe "GET index" do
    it "assigns all thumbnails as @thumbnails" do
      Thumbnail.stub!(:find).with(:all).and_return([mock_thumbnail])
      get :index
      assigns[:thumbnails].should == [mock_thumbnail]
    end
  end

  describe "GET show" do
    it "assigns the requested thumbnail as @thumbnail" do
      Thumbnail.stub!(:find).with("37").and_return(mock_thumbnail)
      get :show, :id => "37"
      assigns[:thumbnail].should equal(mock_thumbnail)
    end
  end

  describe "GET new" do
    it "assigns a new thumbnail as @thumbnail" do
      Thumbnail.stub!(:new).and_return(mock_thumbnail)
      get :new
      assigns[:thumbnail].should equal(mock_thumbnail)
    end
  end

  describe "GET edit" do
    it "assigns the requested thumbnail as @thumbnail" do
      Thumbnail.stub!(:find).with("37").and_return(mock_thumbnail)
      get :edit, :id => "37"
      assigns[:thumbnail].should equal(mock_thumbnail)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created thumbnail as @thumbnail" do
        Thumbnail.stub!(:new).with({'these' => 'params'}).and_return(mock_thumbnail(:save => true))
        post :create, :thumbnail => {:these => 'params'}
        assigns[:thumbnail].should equal(mock_thumbnail)
      end

      it "redirects to the created thumbnail" do
        Thumbnail.stub!(:new).and_return(mock_thumbnail(:save => true))
        post :create, :thumbnail => {}
        response.should redirect_to(thumbnail_url(mock_thumbnail))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved thumbnail as @thumbnail" do
        Thumbnail.stub!(:new).with({'these' => 'params'}).and_return(mock_thumbnail(:save => false))
        post :create, :thumbnail => {:these => 'params'}
        assigns[:thumbnail].should equal(mock_thumbnail)
      end

      it "re-renders the 'new' template" do
        Thumbnail.stub!(:new).and_return(mock_thumbnail(:save => false))
        post :create, :thumbnail => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested thumbnail" do
        Thumbnail.should_receive(:find).with("37").and_return(mock_thumbnail)
        mock_thumbnail.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :thumbnail => {:these => 'params'}
      end

      it "assigns the requested thumbnail as @thumbnail" do
        Thumbnail.stub!(:find).and_return(mock_thumbnail(:update_attributes => true))
        put :update, :id => "1"
        assigns[:thumbnail].should equal(mock_thumbnail)
      end

      it "redirects to the thumbnail" do
        Thumbnail.stub!(:find).and_return(mock_thumbnail(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(thumbnail_url(mock_thumbnail))
      end
    end

    describe "with invalid params" do
      it "updates the requested thumbnail" do
        Thumbnail.should_receive(:find).with("37").and_return(mock_thumbnail)
        mock_thumbnail.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :thumbnail => {:these => 'params'}
      end

      it "assigns the thumbnail as @thumbnail" do
        Thumbnail.stub!(:find).and_return(mock_thumbnail(:update_attributes => false))
        put :update, :id => "1"
        assigns[:thumbnail].should equal(mock_thumbnail)
      end

      it "re-renders the 'edit' template" do
        Thumbnail.stub!(:find).and_return(mock_thumbnail(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested thumbnail" do
      Thumbnail.should_receive(:find).with("37").and_return(mock_thumbnail)
      mock_thumbnail.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the thumbnails list" do
      Thumbnail.stub!(:find).and_return(mock_thumbnail(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(thumbnails_url)
    end
  end

end
