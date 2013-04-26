# class Vote < ActiveRecord::Base
#   belongs_to :voteable, :polymorphic => true
#   belongs_to :user
#   attr_accessible :number
# end
require 'spec_helper'

describe Vote do
  it {should belong_to(:voteable)}
  it {should belong_to(:user)}
end
