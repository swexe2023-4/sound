class SongsController < ApplicationController
  require 'rspotify'
  require 'open-uri'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])
  
  def index
    @track_id = params[:uri]
    
    render "index"
  end
  
  def playlistsong_index
    @track_id = params[:uri]
    
    render "index"
  end
  
  def create
  end
  
  def new
  end
  
  def destroy
    PlaylistSong.find(params[:id]).destroy
    redirect_to top_index_path
  end
  
  def search_songs
    @tracks = RSpotify::Track.search(params[:songname])
    
    @track_list = []
    @tracks.each do |track|
      @track_list.append(track)
    end
  end
end
