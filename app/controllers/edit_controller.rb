class EditController < ApplicationController

  def index
     @job_id = params[:id]
     @job = Job.find_by(id: @job_id)
        # 入力画面を表示
    # @new_edit = Job.new
  end


    def thanks
      @job_id = params[:id]
      @job = Job.find_by(id: @job_id)
      if
          @job.update(title: params[:title], description: params[:description], area: params[:area],)
          flash[:notice] = "編集が完了しました"
          redirect_to '/admin_top'
        else
          flash[:notice] = "送信できませんでした"
          redirect_to '/index'
        end
    end

    def delete
    # @job_id = params[:id]
    # @job = Job.find_by(id: @job_id)
    Job.find_by(id: params[:id]).destroy
   redirect_to '/admin_top', notice: '削除されました'
  end


end
