require 'pry'

class Playlist < ActiveRecord::Base
  has_many :videos

  # Adds
  def self.upsert_playlist(id)
    # begin 
      # binding.pry
      playlist = Yt::Playlist.new id: id
      # binding.pry
      
      Playlist.transaction do
        # binding.pry
        existing = Playlist.find_or_initialize_by(id: playlist.id)
        # binding.pry
        existing.update!(
          title: playlist.title,
          description: playlist.description,
          thumbnail: playlist.thumbnail_url,
        )      
        # binding.pry
      end
      
      # binding.pry
      # return playlist

      # binding.pry
      # rescue => e
        # binding.pry
        # puts "I've been rescued"
        # puts e
        # return nil
      # end
  end

  def sync_videos
    # begin 
      playlist = Yt::Playlist.new id: id

      Playlist.transaction do
        playlist.playlist_items.each do |item|
          Video.upsert_video(item, id)
        end
      end

      # return true

    # rescue => e
    #   puts e
    #   return nil
    # end
  end
end