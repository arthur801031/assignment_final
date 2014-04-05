require 'spec_helper'

describe "Assignments" do
  describe "GET /assignments" do 
    
    it "should have the content 'assignments'" do
      visit '/assignments/index'
      expect(page).to have_content('assignments')
    end  
  end
end
