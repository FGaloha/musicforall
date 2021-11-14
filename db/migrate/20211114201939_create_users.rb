class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :emailpassword
      t.date :birthdate
      t.string :country
      t.string :address_1
      t.string :address_2
      t.string :postal_code
      t.string :city

      t.timestamps
    end
  end
end
