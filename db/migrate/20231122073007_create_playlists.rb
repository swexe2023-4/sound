class CreatePlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists do |t|
      t.string :playlistname
      t.integer :user_id

      t.timestamps
    end
  end
end
