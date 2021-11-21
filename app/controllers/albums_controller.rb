class AlbumsController < ApplicationController
  def index
    if params[:query].present?
      @albums = Album.global_search(params[:query])
    else
      @albums = Album.all
    end
  end
end
