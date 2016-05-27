class MypageController < ApplicationController
  def do
    @user = User.find_by(id: params[:id])
    # @user = User.find(params[:id])
    @entries = JobUser.where(user_id: params[:id])
    #既にログインしてるからparams[:id]はuserのidが入っている。ログインユーザーidのJobUserが出る。
    # @entry_count = JobUser.find(params[:id]

    if session[:user_id] == params[:id].to_i

    else
      redirect_to "/top"
  end
end

  def thanks
    if session[:user_id].present?
       redirect_to "/mypage/#{session[:user_id]}"
    else
       flash[:danger] = 'ログインしてください'
       redirect_to "/login/mypage"

  end
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


  def destroy
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to "/top"
  end
end
