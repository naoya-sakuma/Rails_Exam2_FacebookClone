class SessionsController < ApplicationController
  def new
  end
  def create
    album = Album.find_by(email: params[:session][:email].downcase)
    if album && album.authenticate(params[:session][:password])

    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end
end
