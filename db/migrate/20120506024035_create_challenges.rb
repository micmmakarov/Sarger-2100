class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.datetime :time
      t.integer :challenge_id

      t.timestamps
    end
  end
end
