require 'spec_helper'


describe "Static pages" do
  subject { page }

  describe "Home page" do
    before {visit home_path}

    it { should have_selector('h1', :text => 'Sample App') }
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)

    it {should have_selector('title',:text=>full_title('Home'))}
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
   
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => ' | Help')
    end

  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => ' | About Us')
    end
  end


  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => ' | Contact')
    end
  end

end
