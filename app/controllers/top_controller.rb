class TopController < ApplicationController
  def index
    @playlists = Playlist.all
    @songs = Song.all
    render "index"
  end
end
