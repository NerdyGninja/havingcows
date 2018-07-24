class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :image
      t.string :spotify_link
      t.text :lyrics

      t.timestamps
    end
  end
end
