class AddVideo < ActiveRecord::Migration[6.1]
  def change
    create_table :videos, id: :string do |t|
      t.string :title, null: false
      # in seconds
      t.integer :duration, null: false
      t.string :playlist_id, null: false
      t.timestamps
    end
    add_foreign_key :videos, :playlists, column: :playlist_id
  end
end
