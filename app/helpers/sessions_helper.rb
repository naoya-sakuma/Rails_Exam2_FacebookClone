module SessionsHelper
  def current_album
    @current_album ||= Album.find_by(id: session[:album_id])
  end
  def logged_in?
    current_album.present?
  end
end
