class AddTempIdToProgresses < ActiveRecord::Migration
  def change
    add_column :progresses, :temp_id, :integer
  end
end
