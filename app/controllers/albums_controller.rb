class AlbumsController < ApplicationController
  def new
    @album = Album.new
  end
  def create
    @album = Album.new(album_params)
    if @album.save

    else
      render :new
    end
  end
  private
  def album_params
    params.require(:album).permit(:name, :email, :password,
                                  :password_confirmation)
  end
end
