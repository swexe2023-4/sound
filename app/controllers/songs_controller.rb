class SongsController < ApplicationController
  require 'rspotify'
  require 'open-uri'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])
  
  def index
    uri = params[:uri]

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
    
    track1 = @tracks.first if @track.nil?
    track2 = @tracks.second if @track.nil?
    track3 = @tracks.third if @track.nil?
    track4 = @tracks.fourth if @track.nil?
    track5 = @tracks.fifth if @track.nil?
    
    @track_list = [track1, track2, track3, track4, track5]
    
    # uri1 = @track_list[0].uri #あとで書き直す
    # uri2 = @track_list[1].uri
    # uri3 = @track_list[2].uri
    # uri4 = @track_list[3].uri
    # uri5 = @track_list[4].uri

    # 正規表現を使ってIDを抽出
    # @track_id1 = uri1.match(/spotify:track:(\w+)/)&.captures&.first
    # @track_id2 = uri2.match(/spotify:track:(\w+)/)&.captures&.first
    # @track_id3 = uri3.match(/spotify:track:(\w+)/)&.captures&.first
    # @track_id4 = uri4.match(/spotify:track:(\w+)/)&.captures&.first
    # @track_id5 = uri5.match(/spotify:track:(\w+)/)&.captures&.first
  end
  
  # def search_artists
  #   @tracks = RSpotify::Track.search('STAY')
  #   @track = @tracks.first if @track.nil?
  #   uri = @track.uri

  #   # 正規表現を使ってIDを抽出
  #   @track_id = uri.match(/spotify:track:(\w+)/)&.captures&.first
  # end
end
