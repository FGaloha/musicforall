class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :year
      t.text :synopsis
      t.references :singer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
