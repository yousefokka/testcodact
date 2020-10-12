class Api::V1::JobfavouritController < ApplicationController
    before_action :authenticate_with_token!
    before_action :set_Jobfavourit, only: [:show ,:destroy]
    before_action :check_requst, only: [:create ,:destroy]
    before_action :add_agin, only: [:create]  

    def index   
        @jobs = Job.all 
        @jobfavourits = current_user.jobfavourit.all
        render json: @jobfavourits.as_json(include: :job)
    end


    def show
        render json: @jobfavourit.as_json(include: :job)
    end
    
    
    def create
        @jobfavourit = current_user.jobfavourit.build(favourit_params)
      
        if @jobfavourit.save
          render json: @jobfavourit, status: 201
        else
          render json: { errors: @jobfavourit.errors }, status: 422
        end
    end

      def destroy
        @jobfavourit.destroy 
        render json: {message: "Destroy scuusfull"}, status: 200 
      end

      private
  
      def favourit_params
        params.require(:jobfavourit).permit(:job_id)
      end

      def check_requst
        @user = current_user
        render json: {massage: "not authorize user you are not employee"}, status: 401 if @user.user_type != "employee"
      end
  

      def add_agin 
        @jobfavourit =Jobfavourit.find_by("job_id = ?",  params[:job_id])
        render json: {massage: "you cant do it again"}, status: 400 if @jobfavourit
      end

      def set_Jobfavourit
        @jobfavourit= current_user.jobfavourit.find(params[:id])
      end

end
