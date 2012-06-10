class AddLastRequestAtToTemps < ActiveRecord::Migration
  def change
    add_column :temps, :last_request_at, :datetime
  end
end
