module MypageHelper
  # # 渡されたユーザーでログインする
  # def log_in(user)
  #   session[:user_id] = user.id
  # end
  #
  # # 現在ログインしているユーザーを返す (ユーザーがログイン中の場合のみ)
  # def current_user
  #   if @current_user.nil?
  #   @current_user = User.find_by(id: session[:user_id])
  # else
  #   @current_user
  # end
  # end
  #
  # # ユーザーがログインしていればtrue、その他ならfalseを返す
  # def logged_in?
  #   !current_user.nil?
  # end
end
