class JobController < ApplicationController
  def do
    @job_id = params[:id]
    @job = Job.find_by(id: @job_id)
    @picture = @job.picture
end


def to_entry
    @job = Job.find_by(id: params[:id])
  if session[:user_id].present?

    redirect_to "/entry/#{@job.id}"
  else
    flash[:danger] = 'ログインしてください'
    redirect_to "/login/mypage"
  end
end

  def create
     if session[:user_id].present?
    #  if session[:user_id] == params[:id].to_i
    JobUser.create(job_id: params[:id], user_id: session[:user_id])
      #これ何？？
      # user = User.find(params[:id])
      # sign_in user
      flash[:success] = "応募が完了しました!"
      redirect_to "/mypage/#{session[:user_id]}"
    else
      flash[:danger] = 'ログインしてください'
      redirect_to "/login/mypage"
end
end

def entry
  @job = params[:id]
  @_current_user ||= User.find_by(id: session[:user_id])
end

def create_pic
  @picture = Picture.new(picture_params)
  @picture.save
  redirect_to '/pictures'
end

def picture_params
    params.require(:picture).permit(:name,:photo)
end


end
