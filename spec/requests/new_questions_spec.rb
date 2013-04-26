require 'spec_helper'

describe 'Question' do
  it "can create a new question and view it" do
    visit new_question_path

    expect {
      fill_in 'question_title' , with: "What is FactoryGirl"
      fill_in 'question_content', with: "Please explain"
      click_link "Submit question"
      visit questions_path
      page.check('question_is_published')
    }


end
end
