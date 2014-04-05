require 'spec_helper'

describe "Users" do

  describe "GET /users" do
    it "should have the content 'users'" do
      visit '/users'
      expect(page).to have_content('users')
    end  

    it "should have the content 'Name'" do
      visit '/users/new'
      expect(page).to have_content('Name')
    end 

    it "should have the content 'Assignment'" do
      visit '/users/new'
      expect(page).to have_content('Assignment')
    end  

    it "should have the content 'Email'" do
      visit '/users/new'
      expect(page).to have_content('Email')
    end  

    it "should have the title 'New user'" do
      visit '/users/new'
      expect(page).to have_title('New user')
    end  

  end
end
