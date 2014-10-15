class AlbumsController < ApplicationController
  caches_action :index, :show unless Rails.env.development?

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id], include: [:events])
  end
end
