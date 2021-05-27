class AddPlaylist < ActiveRecord::Migration[6.1]
  def change
    create_table :playlists, id: :string do |t|
      t.string :title, null: false
      t.string :description
      t.string :thumbnail
      t.timestamps
    end
  end
end
