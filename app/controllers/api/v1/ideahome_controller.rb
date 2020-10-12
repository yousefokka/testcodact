class Api::V1::IdeahomeController < ApplicationController
  before_action :set_idea, only: [:show]

  def index
    @ideas = Idea.all
    render json: @ideas
  end

  def show 
    render json: @idea
  end 

private
  def set_idea
    @idea = Idea.find(params[:id])
  end
end
