require 'pry'

class PlaylistsController < ApplicationController
  skip_before_action :verify_authenticity_token
  # before_action :set_playlist_item, only: %i[ show edit update destroy ]
  # access all: [:show], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    @playlists = Playlist.all 
    render json: @playlists
  end 

  def show
      @playlist = Playlist.find(params[:id])
      render json: @playlist
  end 

  def create
    @playlist = Playlist.upsert_playlist(params[:id])
    # binding.pry
    render json: @playlist

    # respond_to do |format|
    #   if @playlist_item.save
    #     format.html { redirect_to playlists_path, notice: "Your playlist item is now live." }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #   end
    # end
  end

  # def update
  #   # respond_to do |format|
  #   #   if @playlist_item.update(playlist_params)
  #   #     format.html { redirect_to playlists_path, notice: "The playlist  was successfully updated." }
  #   #   else
  #   #     format.html { render :edit, status: :unprocessable_entity }
  #   #   end
  #   # end
  #   @playlist_item = Playlist.upsert_playlist(id)
  #   render json: @playlist_item
  # end
  # def update
  #   @playlist = Playlist.find(params[:id])
  #   @playlist.update(
  #     title: params[:title],
  #     description: params[:description],
  #     thumbnail: params[:thumbnail_url]
  #   )
  #   render json: @playlist
  # end   


  def destroy
    #Destroy/Delete the record
    # @playlist_item.destroy

    @playlist = Playlist.all 
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    render json: @playlist

    #Redirect
    #  
  end

  private
  def playlist_params
    params.require(:playlist).permit(:id
                                      # ,:title
                                      # ,:description
                                      # :thumbnail
                                      )
  end

  def set_playlist_item
    @playlist = Playlist.find(params[:id])
  end
end
