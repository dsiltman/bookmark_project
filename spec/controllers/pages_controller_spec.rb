require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                    :content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
        :content => "Ruby on Rails Tutorial Sample App | Contact")
    end
  end

  describe "GET 'bookmarks'" do
    it "should be successful" do
      get 'bookmarks'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'bookmarks'
      response.should have_selector("title",
                    :content => "Ruby on Rails Tutorial Sample App | Bookmarks")
    end
  end

end
