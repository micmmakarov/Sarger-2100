class CreateUsersChallenges < ActiveRecord::Migration
  def change
    create_table :users_challenges do |t|
      t.integer :user_id
      t.integer :challenge_id
      t.boolean :compleate
      t.datetime :started
      t.datetime :ended

      t.timestamps
    end
  end
end
