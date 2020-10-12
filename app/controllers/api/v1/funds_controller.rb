class Api::V1::FundsController < ApplicationController
    before_action :authenticate_with_token!
    before_action :set_fund, only: [:show ,:destroy,:update]
    before_action :check_requst, only: [:create ,:destroy]
    before_action :check_company, only: [:Jobapplication]
    before_action :request_agin, only: [:create]  
  
    / def all
      @funds = fund.all
      render json: @funds
    end
   /
    def sponserapplication
      @ideas = Idea.all 
      @funds = current_user.funds.all
      render json: @funds.as_json(include: :idea)
    end
  
  
    def show
      render json: @fund
    end

  
    def Ideaapplication 
      @funds = current_idea.funds.all
      render json: @funds.as_json(include: {user:  {only: :email,include: :sponser}})
    end
  
    def create
      @fund = current_user.funds.build(fund_params)
    
      if @fund.save
        render json: @fund, status: 201
      else
        render json: { errors: @fund.errors }, status: 422
      end
    end
  
    def destroy
       @fund.destroy
     end
    


    def update
      if @fund.update(responcpe_params)
        render json: @fund
      else
        render json: @fund.errors, status: :unprocessable_entity
      end
    end

    
    private
    
      def fund_params
        params.require(:fund).permit(:user_id, :idea_id)
      end

      def set_fund
        @fund = Fund.find(params[:id])
      end
      
  
      def check_requst
        @user = current_user
        render json: {massage: "not authorize user you are not Sponcer"}, status: 401 if @user.user_type != "sponser"
      end

      def responcpe_params
        params.require(:fund).permit(:Responce)
      end
  
  
    def check_company
      @job = current_job
      render json: {massage: "not authorize company dont allow"}, status: 401 if User.ids == @job.user_id
    end
  
    def request_agin 
      render json: {massage: "you cant do it again"}, status: 400 if User.ids != @fund.user_id
    end

    def request_agin 
      @fund =Fund.find_by("user_id = ? and idea_id = ?", params[:user_id], params[:idea_id])
      render json: {massage: "you cant do it again"}, status: 400 if @fund
    end
      
end
