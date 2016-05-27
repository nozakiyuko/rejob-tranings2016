class TopController < ApplicationController
  def do
    @_current_user ||= User.find_by(id: session[:user_id])
      @user = User.find_by(id: params[:id])
  end

  def login
     if session[:user_id].present?
        redirect_to "/mypage/#{session[:user_id]}"
    else
        flash[:danger] = 'ログインしてください'
        redirect_to "/login/mypage"
    end
  end
end
