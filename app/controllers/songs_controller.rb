class SongsController < ApplicationController
  require 'rspotify'
  require 'open-uri'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])
  
  def index
    @tracks = RSpotify::Track.search('STAY')
    @track = @tracks.first if @track.nil?
    uri = @track.uri

    # 正規表現を使ってIDを抽出
    @track_id = uri.match(/spotify:track:(\w+)/)&.captures&.first
    
    @songs = Song.all
    
    if params[:id].present?
      @selected_song = @songs.find(params[:id])
    end
    
    render "index"
  end
  
  def create
  end
  
  def new
  end
  
  def destory
  end
end
