class Temp < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable   #, :validatable

  has_many :progresses, :dependent => :destroy
  has_many :challenges, :through => :progresses

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name

  def complete?(challenge)
    self.progresses.find_by_challenge_id(challenge.id)
  end

  def complete!(challenge)
    Progress.create!(:temp_id => id, :challenge_id => challenge.id)
  end

  def uncomplete!(challenge)
    p = self.progresses.find_by_challenge_id(challenge.id)
    p.destroy
  end

  def can_complete?(challenge)
    # 1. have children
    # 2. children are completed
    if challenge.challenges.present?
      ch = 1
      challenge.challenges.each do |c|
        if complete?(c)
        else
          ch = 0
        end
      end
    else
      ch = 1
    end
    if ch==1
      "Ha!"
    end

  end


end
