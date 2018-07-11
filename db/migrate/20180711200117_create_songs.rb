class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.text :lyrics
      t.string :image_url
      t.string :song_source

      t.timestamps
    end
  end
end
