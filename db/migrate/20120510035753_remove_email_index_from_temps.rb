class RemoveEmailIndexFromTemps < ActiveRecord::Migration
  def up
    remove_index :temps, :email
    add_index :temps, :email
  end

  def down
    remove_index :temps, :email
    add_index :temps, :email, :unique => true
  end
end
