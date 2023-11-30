class SongsController < ApplicationController
  def index
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
