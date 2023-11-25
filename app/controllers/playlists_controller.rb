class PlaylistsController < ApplicationController
  def index
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.create params.require(:playlist).permit(:playlistname, :image) # POINT
    redirect_to @playlist
  end
  
  def show
    @playlist = Playlist.find(params[:id])
  end

  def destroy
  end

  def nextsong
  end
  
  def playlist_params
    params.require(:playlist).permit(:playlistname, :user_id, :image)
  end
end
