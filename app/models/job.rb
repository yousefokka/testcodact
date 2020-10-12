class Job < ApplicationRecord
    belongs_to :user
    has_many :submittings
    has_many :jobfavourit

    validates_presence_of :title, :jtype, :catagory, :address, :salary, :gander, :qualification, :experience, :description
    #has_many :users, through: :submittings
end