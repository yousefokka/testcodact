class Sponser < ApplicationRecord
    belongs_to :user

    validates_presence_of :name, :Address, :Catagory, :Gander, :Funding, :Typemanagment, :phone, :exprience, :sponcerBio
end
