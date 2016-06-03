class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.integer :water_freq
      t.integer :light_pref
      t.text :picture

      t.timestamps null: false
    end
  end
end
