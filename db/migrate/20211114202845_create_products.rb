class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.text :description
      t.integer :manufacture_year
      t.string :condition
      t.string :brand
      t.float :day_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
