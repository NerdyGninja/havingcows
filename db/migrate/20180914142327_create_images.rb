class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image_url
      t.string :image_name
      t.text :image_description

      t.timestamps
    end
  end
end
