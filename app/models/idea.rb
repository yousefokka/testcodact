class Idea < ApplicationRecord
    belongs_to :user
    has_many :funds
    has_many :jobfavourit
    validates_presence_of :title, :Management, :ideacatagory, :address, :funding, :ideaDescription

end
