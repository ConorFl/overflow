class Question < ActiveRecord::Base
  attr_accessible :title, :content
  has_many :votes, :as => :voteable
  belongs_to :user
  has_many :answers
  has_many :responses, :as => :respondable
end
