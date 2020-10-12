class ApplicationController < ActionController::API
  def current_user
    @current_user ||= User.find_by(auth_token: request.headers['Authorization']) 
  end
    
  def authenticate_with_token!
    render json: { errors: "Not authenticated" },status: :unauthorized unless user_signed_in?
  end
    
  def user_signed_in?
    current_user.present? 
  end

  def prepare_user
    @user = User.find(params[:id])
  end

  def current_job
    @current_job ||= Job.find(params[:id])
  end

  def current_idea
    @current_idea ||= Idea.find(params[:id])
  end


  def current_submition
    @current_submition ||= Submitting.find(params[:id])
  end


 
end
