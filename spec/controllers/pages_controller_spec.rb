require 'spec_helper'


describe PagesController do

  before (:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

#I Don't really understand why the "Response.should together with "get 'home'" don't work, they don't render views.

  describe "GET 'home'" do
    render_views
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      visit '/pages/home'
      page.should have_selector("title", 
                                :text => "#{@base_title} | Home")
    end

    it "should have an non-blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/  # should not hava a blamnk body
    end

  end



  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
       visit '/pages/contact'
      page.should have_selector("title", 
                                 :content => "#{@base_title} | contact")
    end

  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do   
       visit '/pages/about'
      page.should have_selector("title", 
                                :content => "#{@base_title}| about")
    end
  end

end
