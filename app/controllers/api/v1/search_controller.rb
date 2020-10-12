class Api::V1::SearchController < ApplicationController
    before_action :authenticate_with_token!


    def show 
        @jobs = Job.where("title = ? ", params[:title])
        if @jobs.present?
            render json: @jobs , status: 200
        else
            render json: {massage: "not found this Job"}, status: 402
        end
    end


    def show2 
        @ideas = Idea.where("title = ? " , params[:title])
        if @ideas.present?
            render json: @ideas , status: 200
        else
            render json: {massage: "not found this idea"}, status: 402
        end
    end

end
