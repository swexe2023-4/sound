class TopController < ApplicationController
  def index
    @playlists = Playlist.all
    render "index"
  end
end
