class Response < ActiveRecord::Base
  belongs_to :user
  belongs_to :respondable, :polymorphic => true
  attr_accessible :content
  has_many :votes, :as => :voteable
end
