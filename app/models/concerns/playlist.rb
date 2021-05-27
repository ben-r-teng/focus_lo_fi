class Playlist < ActiveRecord::Base


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
end