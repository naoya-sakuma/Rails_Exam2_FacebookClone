class ApplicationController < ActionController::Base
  def new
    @album = Album.new
  end
end
