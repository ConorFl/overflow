
require 'spec_helper'

describe Answer do
  it {should belong_to(:user)}
  it {should validate_presence_of(:content)}
  it {should belong_to(:question)}
  it {should have_many(:responses)}
  it {should have_many(:votes)}
end

# class Answer < ActiveRecord::Base
#   belongs_to :question
#   belongs_to :user
#   has_many :responses, :as => :respondable
#   has_many :votes, :as => :voteable
#   attr_accessible :question_id,:content
#   validates :content, :presence => true
# end


# describe Post do
#   it { should validate_uniqueness_of(:title) }
#   it { should validate_uniqueness_of(:title).scoped_to(:user_id, :category_id) }
#   it { should validate_presence_of(:body).with_message(/wtf/) }
#   it { should validate_presence_of(:title) }
#   it { should validate_numericality_of(:user_id) }
#   it { should ensure_inclusion_of(:status).in_array(['draft', 'public']) }
# end

# describe User do
#   it { should_not allow_value("blah").for(:email) }
#   it { should allow_value("a@b.com").for(:email) }
#   it { should ensure_inclusion_of(:age).in_range(1..100) }
#   it { should_not allow_mass_assignment_of(:password) }
# end
# describe Post do
#   it { should belong_to(:user) }
#   it { should have_many(:tags).through(:taggings) }
# end

# describe User do
#   it { should have_many(:posts) }
# end
