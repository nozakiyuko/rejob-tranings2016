class User < ActiveRecord::Base
  has_many :job_users
  has_many :jobs, through: :job_users
  #~
# # User生成のタイミングでコールバック
# before_create :create_remember_token
# ~
#
# # ログイン時はSessionHelperから呼び出すことになるのでpublic
# def User.new_remember_token
#   SecureRandom.urlsafe_base64
# end
#
# # 同上
# def User.encrypt(token)
#   Digest::SHA1.hexdigest(token.to_s)
# end
#
# private
#
#   # User生成時、before_createコールバックから呼び出す。
#   def create_remember_token
#     self.remember_token = User.encrypt(User.new_remember_token)
#   end

end
