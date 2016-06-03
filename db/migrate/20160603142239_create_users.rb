class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :location
      t.integer :feedback
      t.boolean :available

      t.timestamps null: false
    end
  end
end
