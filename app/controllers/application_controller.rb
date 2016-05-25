class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  #  include MypageHelper
  def current_user
   @_current_user ||= User.find_by(id: session[:user_id])
 end
end
