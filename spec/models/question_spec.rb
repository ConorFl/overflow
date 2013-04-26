# class Question < ActiveRecord::Base
#   attr_accessible :title, :content
#   has_many :votes, :as => :voteable
#   belongs_to :user
#   has_many :answers
#   has_many :responses, :as => :respondable
# end
require 'spec_helper'

describe Question do
  it {should belong_to(:user)}
  it {should have_many(:votes)}
  it {should have_many(:answers)}
  it {should have_many(:responses)}
  
end
