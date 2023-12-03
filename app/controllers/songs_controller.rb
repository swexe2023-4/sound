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
    
    @track1 = @tracks.first if @track.nil?
    @track2 = @tracks.second if @track.nil?
    @track3 = @tracks.third if @track.nil?
    @track4 = @tracks.fourth if @track.nil?
    @track5 = @tracks.fifth if @track.nil?
    uri1 = @track1.uri
    
    @songname1 = @track1.name
    @artistname1 = @track1.artists[0].name
    
    @songname2 = @track2.name
    @artistname2 = @track2.artists[0].name
    
    @songname3 = @track3.name
    @artistname3 = @track3.artists[0].name
    
    @songname4 = @track4.name
    @artistname4 = @track4.artists[0].name
    
    @songname5 = @track5.name
    @artistname5 = @track5.artists[0].name

    # 正規表現を使ってIDを抽出
    @track_id1 = uri1.match(/spotify:track:(\w+)/)&.captures&.first
  end
  
  def search_artists
    @tracks = RSpotify::Track.search('STAY')
    @track = @tracks.first if @track.nil?
    uri = @track.uri

    # 正規表現を使ってIDを抽出
    @track_id = uri.match(/spotify:track:(\w+)/)&.captures&.first
  end
end
