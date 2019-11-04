class AlbumsController < ApplicationController

  def index
    @albums = Album.preload(:events)
  end

  def show
    @album = Album.find_by_slug(params[:id])
  end
end
