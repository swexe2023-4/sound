class SongsController < ApplicationController
  require 'rspotify'
  require 'open-uri'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])
  
  def index
    @track_id = params[:uri]
    
    render "index"
  end
  
  def create
  end
  
  def new
  end
  
  def destory
  end
  
  def search_songs
    @tracks = RSpotify::Track.search(params[:songname])
    
    @track_list = []
    @tracks.each do |track|
      @track_list.append(track)
    end
  end
end
