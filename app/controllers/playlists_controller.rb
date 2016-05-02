class PlaylistsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :delete]

  def index
    @playlists = Playlist.order(:name)
  end

  def show
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
      if @playlist.save == true
        redirect_to playlists_index_path
      else
        "error"
      end
  end

  def delete
  end

  def update
  end

private
  def playlist_params
    params.require(:playlist).permit(:name)
  end

end
