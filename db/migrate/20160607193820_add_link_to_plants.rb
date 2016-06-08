class AddLinkToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :link, :text
  end
end
