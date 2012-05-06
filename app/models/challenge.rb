class Challenge < ActiveRecord::Base

  has_many :challenges
  belongs_to :challenge

  has_many :users, :through => :users_challenges

end
