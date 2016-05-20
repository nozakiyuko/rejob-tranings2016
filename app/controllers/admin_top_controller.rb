class AdminTopController < ApplicationController
  def do
     @job = Job.where(title: params[:title])
  end
end
