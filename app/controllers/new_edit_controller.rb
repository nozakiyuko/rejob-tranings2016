class NewEditController < ApplicationController
  #def do
  #  if @newedit = Job.new  #黒田に質問（黒田も未完成）
  #    redirect_to 'admin_top', notice: 'アラート'
  #end
#end
def index
    # 入力画面を表示
    @new_edit = Job.new
    #(params[:new_edit])
    #render :action => 'index'

    #if @new_edit.save
    #  redirect_to @new_edit, notice: '登録されました'
    #else
      #render :new
  # end
  end

  def confirm
    # 入力値のチェック
    @new_edit = Job.new(job_params)
    if @new_edit.valid?
      # OK。確認画面を表示
      render :action => '/confirm'
    else
      # NG。入力画面を再表示
      render :action => 'index'
    end
  end

  def thanks
    # メール送信
    @new_edit = Job.new(job_params)
    @new_edit.save
    # JobMailer.received_email(@new_edit).deliver

    # 完了画面を表示
    render :action => 'thanks'
  end

  def job_params
    params.require(:job).permit(:title,:description,:area)

  end
end
