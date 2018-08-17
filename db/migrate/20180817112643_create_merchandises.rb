class CreateMerchandises < ActiveRecord::Migration[5.2]
  def change
    create_table :merchandises do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :image_url
      t.string :colour

      t.timestamps
    end
  end
end
