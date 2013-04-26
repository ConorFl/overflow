require 'spec_helper'

# before :each do 
#   User.create(:name=>"d",:email=>"d@gmail.com",:password=>"xyz",:password_confirmation=>"xyzgit ")
# end

describe 'Question' do
  it "can create a new question and view it" do
    visit new_question_path

  
      fill_in 'question_title' , with: "What is FactoryGirl"
      fill_in 'question_content', with: "Please explain"
      click_button "Submit question"
  
      visit questions_path
      page.should have_content('What is FactoryGirl')
      page.should have_content('Please explain')


end
end
