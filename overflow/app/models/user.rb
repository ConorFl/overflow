require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt
  attr_accessible :email, :name, :password_digest
  has_secure_password

  validates_confirmation_of :password
end
