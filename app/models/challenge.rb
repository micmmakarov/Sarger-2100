class Challenge < ActiveRecord::Base

  has_many :challenges, :dependent => :destroy
  belongs_to :challenge

  has_many :users, :through => :users_challenges


  def more_levels?

    self.challenges.map do |ch|
      if challenges.length > 1
        "fuck"
      end
    end
  end

end
