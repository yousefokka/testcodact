class Api::V1::ProfilesController < ApplicationController
  before_action :authenticate_with_token!, only: [:create, :update, :destroy]
  before_action :prepare_user, only: [:create,:show, :update, :destroy] 
  before_action :validate_user 
  before_action :profile_exits, only: [:create]
 

  # GET /employee
  def show 
    profile = @user.profile
    return render json: {massage: "profile not found"}, status: 404 unless profile
    render json: profile
  end

  # POST /employees
  
  def create
    if params[:profile_type] == 1
      profile = @user.create_employee(employee_params)
    elsif params[:profile_type] == 2
      profile = @user.create_sponser(sponser_params)
    elsif  params[:profile_type] == 3
      profile = @user.create_ideamaker(ideamaker_params)
    else
      return render json: {massage: "unknown type"}, status: 404
    end 

    if profile.save
      render json: profile, status: :created 
    else
      render json: profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employees/1
  def update
    if params[:profile_type] == 1
      if @user.profile.update(employee_params)
         render json: @user.profile
       else
        render json: @user.profile.errors, status: :unprocessable_entity
      end
    elsif params[:profile_type] == 2
      if @user.profile.update(sponser_params)
         render json: @user.profile
       else
        render json: @user.profile.errors, status: :unprocessable_entity
      end
    elsif params[:profile_type] == 3
      if @user.profile.update(ideamaker_params)
        render json: @user.profile
       else
        render json: @user.profile.errors, status: :unprocessable_entity
      end
    else
      return render json: {massage: "unknown type"}, status: 404
    end 
  end

  # DELETE /employees/1
  def destroy
    @user.profile.destroy
  end

  private

  def validate_user
    render json: {massage: "you can't accsess this  is user"}, status: 401 if current_user != @user  
  end
  
  def profile_exits
  render json: {massage: "user has already profile"}, status: 400 if @user.profile?
  end
    # Only allow a trusted parameter "white list" through.
  def sponser_params
    params.require(:sponser).permit(:name, :Address, :Catagory, :Gander, :Funding, :Typemanagment, :phone, :exprience, :sponcerBio)
  end

  def employee_params
    params.require(:employee).permit(:name, :jobtybe, :jobcategory, :address, :salary, :Gander, :Qualifcation, :mobile, :Degree, :Indestry, :Exprense ,:employeeBio, :Datafrom, :Datato)
  end

  def ideamaker_params
    params.require(:ideamaker).permit(:name, :addree, :Gander, :qualifiction, :mobile, :interstingfield, :ideamakerBio, :Website, :size, :ownernaem , :ownerphono ,:owneraddress ,:companyemail)
  end
end
