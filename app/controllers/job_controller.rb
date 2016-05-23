class JobController < ApplicationController
  def do
    @job_id = params[:id]
    @job = Job.find_by(id: @job_id)
    #@jobss = Job.where(id: params[:id])　#これがないとid先へのリンクにならないのはなぜー！
  end
end
