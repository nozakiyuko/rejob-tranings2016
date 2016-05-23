class AdminTopController < ApplicationController
  def do
    @job_id = params[:id]
    @job = Job.find_by(id: @job_id)
  end


  def new

    #Job.create(title: params[:title
    #description: params[:description
    #redirect_to '/admin'

  end

  def save
  end

end
