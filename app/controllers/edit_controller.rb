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

    if @job.picture_id == nil
      picture = Picture.new(picture_params)
      # 写真保存処理
      picture.save
    else
      picture = Picture.find_by(id: @job.picture_id)
      picture.update(name: params[:name], photo: params[:picture][:photo])
    end

    if
      @job.update(title: params[:title], description: params[:description], area: params[:area], picture_id: picture.id)
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

  def picture_params
      params.require(:picture).permit(:name,:photo)
    end

end
