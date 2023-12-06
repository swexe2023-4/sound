class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
    
    if params[:id].present?
      @selected_playlist = @playlists.find(params[:id])
    end
    render "index"
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
    params.require(:playlist).permit(:id, :playlistname, :user_id, :image)
  end
  
  def add
  end
end
