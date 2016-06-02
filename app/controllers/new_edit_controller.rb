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
  #
  # def read(length=nil, buffer=nil)
  #   @tempfile.read(length, buffer)
  # end
#
# def require "cgi"
# cgi = CGI.new
# print "Content-type: text/html\n\n"
# open("./upload.jpg","w") do |fh|
# fh.binmode
# fh.write cgi['image'].read
# end
# end



  def create
    @job = Job.new
    picture = Picture.new(picture_params)
    # 写真保存処理
    picture.save
    @job.title = params[:title]
    @job.description = params[:description]
    @job.area = params[:area]
    # @job.image = params[:image].read
    if
      Job.create(title: params[:title], description: params[:description], area: params[:area], picture_id: picture.id)
      flash[:notice] = "送信完了"
      redirect_to '/admin_top'
    else
      flash[:notice] = "送信できませんでした"
      redirect_to '/index'
    end
  end
  def picture_params
      params.require(:picture).permit(:name,:photo)
    end
end
