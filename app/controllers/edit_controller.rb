class EditController < ApplicationController
  def do
    @job_id = params[:id]
    @job = Job.find_by(id: @job_id)
  end
end
