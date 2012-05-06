class User < ActiveRecord::Base

  has_many :progresses, :dependent => :destroy
  has_many :challenges, :through => :progresses

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name


  def complete?(challenge)
    self.progresses.find_by_challenge_id(challenge.id)
  end

  def complete!(challenge)
    Progress.create!(user_id:id,challenge_id:challenge.id)
  end

  def uncomplete!(challenge)
    p = self.progresses.find_by_challenge_id(challenge.id)
    p.destroy
  end

  def start!(challenge)

  end

end
