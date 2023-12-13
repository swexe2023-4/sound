class CreatePlaylistSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :playlist_songs do |t|
      t.integer :playlist_id
      t.string :songuri
      t.string :songname
      t.string :artistname
      t.string :image

      t.timestamps
    end
  end
end
