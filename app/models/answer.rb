class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many :responses, :as => :respondable
  has_many :votes, :as => :voteable
  attr_accessible :question_id,:content
  validates :content, :presence => true
end
