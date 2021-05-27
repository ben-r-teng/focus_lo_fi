class Playlist < ActiveRecord::Base
  has_many :videos

  # Adds
  def self.upsert_playlist(id)
    begin 
    playlist = Yt::Playlist.new id: id
    
    Playlist.transaction do
      existing = Playlist.find_or_initialize_by(id: playlist.id)
      existing.update!(
        title: playlist.title,
        description: playlist.description,
        thumbnail: playlist.thumbnail_url,
      )      
    end

    return playlist

    rescue => e
      puts e
      return nil
    end
  end

  def sync_videos
    begin 
      playlist = Yt::Playlist.new id: id

      Playlist.transaction do
        playlist.playlist_items.each do |item|
          Video.upsert_video(item, id)
        end
      end

      return true

    rescue => e
      puts e
      return nil
    end
  end
end