class CreateTemps < ActiveRecord::Migration
  def change
    create_table :temps do |t|
      t.string :name

      t.timestamps
    end
  end
end
