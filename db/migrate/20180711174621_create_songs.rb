class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.text :lyrics
      t.string :image_url
      t.string :spotify_url

      t.timestamps
    end
  end
end
