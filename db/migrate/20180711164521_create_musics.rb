class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :song_name
      t.string :lyrics
      t.string :image_url
      t.string :spotify_url

      t.timestamps
    end
  end
end
