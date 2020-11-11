class SessionsController < ApplicationController
  def new
  end
  def create
    album = Album.find_by(email: params[:session][:email].downcase)
    if album && album.authenticate(params[:session][:password])
      session[:album_id] = album.id
      redirect_to album_path(album.id)
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new
    end
  end
  def destroy
    session.delete(:album_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to new_session_path
  end
end
