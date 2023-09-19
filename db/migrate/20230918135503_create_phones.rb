class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.string :brand
      t.string :model
      t.integer :price
      t.integer :capacity_go
      t.string :color
      t.string :camera
      t.text :description

      t.timestamps
    end
  end
end
