class Api::V1::UsersController < ApplicationController
  before_action :authenticate_with_token!, only: [:update, :destroy]
  before_action :prepare_user, only: [:show, :update, :destroy] 
  respond_to :json

  def show
    render json: @user.as_json(only: [:email])
  end
  
  def create
    @user = User.new(user_params) 
    if @user.save
      render json: @user, status: 201
    else
      render json: { errors: @user.errors }, status: 422
    end
  end
  
  def update
    if @user.update(user_params)
      render json: @user, status: 200
    else
      render json: { errors: @user.errors }, status: 422
    end
  end

  def destroy
    @user.destroy
    head 204
  end
  
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation) 
  end
end
