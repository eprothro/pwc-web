class AlbumsController < ApplicationController
  caches_action :index, :show unless Rails.env.development?

  def index
    @albums = Album.preload(:events)
  end

  def show
    @album = Album.find(params[:id])
  end
end
