class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :id
      t.string :name
      t.integer :price
      t.string :description
      t.string :photo
      t.integer :category_id

      t.timestamps
    end
  end
end
