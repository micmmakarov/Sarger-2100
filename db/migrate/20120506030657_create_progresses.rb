class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.integer :user_id
      t.integer :challenge_id

      t.timestamps
    end
  end
end
