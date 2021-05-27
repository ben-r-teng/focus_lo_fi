class AddPlaylist < ActiveRecord::Migration[6.1]
  def change
    # The ID is the UUID used by Scryfall
    create_table :playlists, id: :string do |t|
      t.string :title, null: false
      t.string :description
      t.string :thumbnail
      t.timestamps
    end
  end
end
