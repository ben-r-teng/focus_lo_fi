class SeedVideos < ActiveRecord::Migration[6.1]
  def change
    Playlist.find('PLsFyMXW7uQ_Bho6Kmd75bpp1R5ucNNWBn').sync_videos
    Playlist.find('PLsFyMXW7uQ_C3DyiKVD5vieotxSyekLLy').sync_videos
  end
end
