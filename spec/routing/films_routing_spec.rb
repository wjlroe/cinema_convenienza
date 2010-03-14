require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe FilmsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "films", :action => "index").should == "/films"
    end

    it "maps #new" do
      route_for(:controller => "films", :action => "new").should == "/films/new"
    end

    it "maps #show" do
      route_for(:controller => "films", :action => "show", :id => "1").should == "/films/1"
    end

    it "maps #edit" do
      route_for(:controller => "films", :action => "edit", :id => "1").should == "/films/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "films", :action => "create").should == {:path => "/films", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "films", :action => "update", :id => "1").should == {:path =>"/films/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "films", :action => "destroy", :id => "1").should == {:path =>"/films/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/films").should == {:controller => "films", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/films/new").should == {:controller => "films", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/films").should == {:controller => "films", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/films/1").should == {:controller => "films", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/films/1/edit").should == {:controller => "films", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/films/1").should == {:controller => "films", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/films/1").should == {:controller => "films", :action => "destroy", :id => "1"}
    end
  end
end
