class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthab
  has_many :jobs
  has_many :ideas
  has_one :sponser
  has_one :employee
  has_one :ideamaker
  has_many :submittings
  has_many :funds
  has_many :jobfavourit
  has_many :ideafavourit
  #has_many :jobs, through: :submittings
  validates :auth_token, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_create :generate_authentication_token!   

  def generate_authentication_token!
    begin
      self.auth_token = Devise.friendly_token
    end while self.class.exists?(auth_token: auth_token)
  end

  def profile?
    sponser.present? || employee.present? || ideamaker.present?
  end 
  def profile
    sponser || employee || ideamaker
  end 

  def user_type
    return "sponser" if sponser
    return "employee" if employee
    return "ideamaker" if ideamaker
    return "not_found"   
  end
  
end
