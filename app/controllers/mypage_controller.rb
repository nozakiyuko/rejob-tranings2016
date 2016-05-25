class MypageController < ApplicationController
  def do

  end
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.password == params[:password]
      #ユーザーが存在するかつ、emailとpasswordが合っているか
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
     session[:user_id] = user.id
      #これ何？？
      # user = User.find(params[:id])
      # sign_in user
      redirect_to "/mypage/#{user.id}"
    else
      flash[:danger] = ' メールアドレス、もしくはパスワード が間違っています'
      redirect_to "/login/mypage"
  end
  end

def do
  @user = User.find_by(id: params[:id])
  if session[:user_id] == params[:id].to_i

  else
    redirect_to "/top"

end
end

  def destroy
    # @_current_userとsession[:user_id]の値をnilにする
@_current_user = session[:user_id] = nil
redirect_to "/top"
  end
end
