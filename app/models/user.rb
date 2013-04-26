require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt
  attr_accessible :email, :name, :password, :password_confirmation
  validates :name, :presence => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  has_secure_password
  has_many :questions
  has_many :responses
  has_many :answers
  has_many :votes
  validates_confirmation_of :password
end
