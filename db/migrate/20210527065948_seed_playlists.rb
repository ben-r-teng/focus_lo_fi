class SeedPlaylists < ActiveRecord::Migration[6.1]
  def change
    Playlist.upsert_playlist('PLsFyMXW7uQ_Bho6Kmd75bpp1R5ucNNWBn')
    Playlist.upsert_playlist('PLsFyMXW7uQ_C3DyiKVD5vieotxSyekLLy')
  end
end
