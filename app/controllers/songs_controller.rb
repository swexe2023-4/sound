class SongsController < ApplicationController
  require 'rspotify'
  require 'open-uri'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])
  
  def index
    @track_id = params[:uri]

    # 正規表現を使ってIDを抽出
    # @track_id = uri.match(/spotify:track:(\w+)/)&.captures&.first
    
    # @songs = Song.all
    
    # if params[:id].present?
    #   @selected_song = @songs.find(params[:id])
    # end
    
    render "index"
  end
  
  def create
  end
  
  def new
  end
  
  def destory
  end
  
  def search_songs
    @tracks = RSpotify::Track.search(params[:songname]).first(5)
    
    track1 = @tracks.first if @track.nil?
    track2 = @tracks.second if @track.nil?
    track3 = @tracks.third if @track.nil?
    track4 = @tracks.fourth if @track.nil?
    track5 = @tracks.fifth if @track.nil?
    
    @track_list = [track1, track2, track3, track4, track5]
  end
end