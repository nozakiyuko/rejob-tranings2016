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



  def thanks
    if
      Job.create(title: params[:title], description: params[:description], area: params[:area],)
      flash[:notice] = "送信完了"
      redirect_to '/admin_top'
    else
      flash[:notice] = "送信できませんでした"
      redirect_to '/index'
    end
  end

end
