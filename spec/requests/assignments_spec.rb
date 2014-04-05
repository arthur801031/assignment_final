require 'spec_helper'

describe "Assignments" do
  describe "GET /assignments" do 
    
    it "should have the content 'assignments'" do
      visit '/assignments'
      expect(page).to have_content('assignments')
    end  

    it "should have the title 'Assignments'" do
      visit '/assignments'
      expect(page).to have_title('Assignments')
    end  

    it "should have the title 'New assignment'" do
      visit '/assignments/new'
      expect(page).to have_title('New assignment')
    end 
    
    it "should have the content 'Title'" do
      visit '/assignments/new'
      expect(page).to have_content('Title')
    end 

    it "should have the content 'Description'" do
      visit '/assignments/new'
      expect(page).to have_content('Description')
    end 

    it "should have the content 'Duedate'" do
      visit '/assignments/new'
      expect(page).to have_content('Duedate')
    end 
  end
end
