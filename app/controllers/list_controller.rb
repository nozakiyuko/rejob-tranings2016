class ListController < ApplicationController
 #before_action http_basic_authenticate_with name: "username", password: "password"
  def do
    #@trend = params[:trend]
   #params[:trend] #sakuraが来ている
   @jobs = Job.where(area: params[:area])#(カラム名: parms[:呼ぶURL?])
   @area = params[:area]
  # @area_all = Area.find_each([:area_name]) do |i|
   @area_name = Area.where(area_name: params[:area])
   @job_id = params[:id]
   @job = Job.find_by(id: @job_id)
  end
end
