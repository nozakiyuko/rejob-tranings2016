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

  def image_test_form
    @image = Image.new
    @image_all = Image.all
  end

  def image_create
    @image = Image.new
    Image.create(file: params[:pic].read, filename: params[:title])
    redirect_to 'show'
  end

  def show_image
    @image = Image.find(params[:id])
    send_data @image.file, :type => 'image/jpeg', :disposition => 'inline'
    redirect_to 'image_test'
  end
end
