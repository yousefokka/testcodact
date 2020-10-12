class Api::V1::JobhomeController < ApplicationController
  before_action :set_job, only: [:show]

  def index
    @jobs = Job.all
    render json: @jobs
  end

  def show 
    render json: @job
  end 

private
  def set_job
    @job = Job.find(params[:id])
  end
end
