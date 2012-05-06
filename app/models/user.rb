class User < ActiveRecord::Base

  has_many :challenges, :through => :users_challenges

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name


  def complete?(challenge)
    users_challenges.find_by_user_id(id)
  end

  def complete!(challenge)
    users_challenges.create!(user_id:id,challenge_id:chalenge.id)
  end

  def start!(challenge)

  end

end
