# class Response < ActiveRecord::Base
#   belongs_to :user
#   belongs_to :respondable, :polymorphic => true
#   attr_accessible :content
#   has_many :votes, :as => :voteable
# end
require 'spec_helper'

describe Response do
  it {should belong_to(:respondable)}
  it {should belong_to(:user)}
  it {should have_many(:votes)}
end
