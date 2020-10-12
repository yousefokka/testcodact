class Api::V1::IdeafavouritController < ApplicationController
    before_action :authenticate_with_token!
    before_action :set_ideafavourit, only: [:show ,:destroy]
    before_action :ideack_requst, only: [:create ,:destroy]
    before_action :add_agin, only: [:create]  

    def index   
        @ideas = Idea.all 
        @ideafavourits = current_user.ideafavourit.all
        render json: @ideafavourits.as_json(include: :idea)
    end


    def show
        render json: @ideafavourit.as_json(include: :idea)
    end
    
    def create
        @ideafavourit = current_user.ideafavourit.build(favourit_params)
      
        if @ideafavourit.save
          render json: @ideafavourit, status: 201
        else
          render json: { errors: @ideafavourit.errors }, status: 422
        end
    end

    def destroy
        @ideafavourit.destroy 
        render json: {mesideae: "Destroy scuusfull"}, status: 200 
    end

      private
  
    def favourit_params
        params.require(:ideafavourit).permit(:idea_id)
    end

      def ideack_requst
        @user = current_user
        render json: {massage: "not authorize user you are not ideamaker"}, status: 401 if @user.user_type != "sponser"
      end
  

      def add_agin 
        @ideafavourit =Ideafavourit.find_by("idea_id = ?",  params[:idea_id])
        render json: {masideae: "you canideao it again"}, status: 400 if @ideafavourit
      end

      def idea_ideafavourit
        @ideafavourit= currentideaer.ideafavourit.find(params[:id])
      end
end