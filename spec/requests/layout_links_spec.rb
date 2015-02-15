require 'spec_helper'

describe "LayoutLinks" do
  it "should have a home page at '/'" do
  # 	get '/'
  # 	it { should have_selector 'title', text: "#{@base_title} | Home"}
  # end

  #  it "should have a contact page at '/contact'" do
  # 	get '/contact'
  # 	response.should have_selector('title', :content=> "Contact")
  # end

  # it "should have a about page at '/about'" do
  # 	get '/about'
  # 	response.should have_selector('title', :content=> "About")
  end

  it "should have a contact page at '/help" do
  	get '/help'
  	# response.should have_selector('title', :content=> "help")
  end
 


end
