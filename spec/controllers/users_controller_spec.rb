require 'spec_helper'

describe UsersController do
  render_views
  
  before(:each) do
    @user = Factory(:user)
  end
  
  describe "GET :show" do
    
    it "should show the user page" do
      get :show, :id => @user
      response.should be_success
    end
    
    it "should find the right user" do
      get :show, :id => @user
      assigns(:user).should == @user
    end
    
    # it "should have the right title" do
    #   get :show, :id => @user
    #   response.should have_selector('title', :content => @user.name )
    # end
    
    # it "should have an avatar" do
    #   get :show, :id => @user
    #   response.should have_selector('h3>img', :class => 'gravatar')
    # end
  end
  
  describe "GET 'new'" do
    
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    
    # it "should have the right title" do
    #   get 'new'
    #   response.should have_selector('title', :content => 'Sign Up')
    # end

  end
end
