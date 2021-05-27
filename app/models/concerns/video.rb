class Video < ActiveRecord::Base
  belongs_to :playlist

  # Adds
  def self.upsert_video(item, playlist_id)
    begin
    
    video = Yt::Video.new id: item.video_id

    Video.transaction do
      existing = Video.find_or_initialize_by(id: video.id)
      existing.update!(
        title: video.title,
        duration: video.duration,
        playlist_id: playlist_id,
      )      
    end

    return video

    rescue => e
      puts e
      return nil
    end
  end
end
