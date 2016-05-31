class UserController < ApplicationController
  def show
  @user = User.find(params[:id])
  end

def new
  if
    User.create(name: params[:name], kana: params[:kana], sex: params[:sex], age: params[:age], email: params[:email], password: params[:password],)
    # session[:user_id] = user.id
    # @user = User.find(session[:user_id])
    flash[:notice] = "登録完了"
    # redirect_to "/mypage/#{session[:user_id]}"
    redirect_to "/top"
  else
    flash[:notice] = "送信できませんでした"
    redirect_to '/new'
end
end

def create

end
end
