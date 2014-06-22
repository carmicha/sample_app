require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample App' " do
    	visit '/static_pages/home'
    	page.should have_content('Sample App')
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end  
  end  
  describe "About page" do
    it "should have the content 'About Us' " do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end 
  end
end
