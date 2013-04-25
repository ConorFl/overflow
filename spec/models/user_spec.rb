
require 'spec_helper'

describe User do

  before(:all) do 
    @user =User.create(:name=>"xyz",:email=>"xyz@gmail.com",:password=>"xyz",
      :password_confirmation=>"xyz")
    @question1 =Question.create(:title=>"xyz",:content=>"abc")
    @question2 =Question.create(:title=>"xyz",:content=>"abc")
    @user.questions << @question1
    @user.questions << @question2
    @answer1 =Answer.create(:content=>"abc")
    @answer2 =Answer.create(:content=>"abc")
    @question1.answers << [@answer1, @answer2]
  end  


  it "can be instantiated" do
    User.new.should be_an_instance_of(User)
  end

  it "cannot be created with all nil parameters" do
    User.create.should_not be_persisted
  end

  it "user has many questions" do
    @user.questions.length.should eq(2)
  end

  it "user enters valid email" do
    @user2 =User.create(:name=>"xyz",:email=>"xyzmail.com",:password=>"xyz",
      :password_confirmation=>"xyz")
    @user2.should_not be_valid
  end


#PASTE IN QUESTION MODEL RSPEC
  it "questions have answers" do
    @user.questions.first.answers.length.should eq(2)
  end

end

