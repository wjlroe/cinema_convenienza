require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ThumbnailsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "thumbnails", :action => "index").should == "/thumbnails"
    end

    it "maps #new" do
      route_for(:controller => "thumbnails", :action => "new").should == "/thumbnails/new"
    end

    it "maps #show" do
      route_for(:controller => "thumbnails", :action => "show", :id => "1").should == "/thumbnails/1"
    end

    it "maps #edit" do
      route_for(:controller => "thumbnails", :action => "edit", :id => "1").should == "/thumbnails/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "thumbnails", :action => "create").should == {:path => "/thumbnails", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "thumbnails", :action => "update", :id => "1").should == {:path =>"/thumbnails/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "thumbnails", :action => "destroy", :id => "1").should == {:path =>"/thumbnails/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/thumbnails").should == {:controller => "thumbnails", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/thumbnails/new").should == {:controller => "thumbnails", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/thumbnails").should == {:controller => "thumbnails", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/thumbnails/1").should == {:controller => "thumbnails", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/thumbnails/1/edit").should == {:controller => "thumbnails", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/thumbnails/1").should == {:controller => "thumbnails", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/thumbnails/1").should == {:controller => "thumbnails", :action => "destroy", :id => "1"}
    end
  end
end
