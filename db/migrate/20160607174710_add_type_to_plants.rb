class AddTypeToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :type, :string
  end
end
