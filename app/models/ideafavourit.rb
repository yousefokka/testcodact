class Ideafavourit < ApplicationRecord
    belongs_to :user  ,dependent: :destroy
    belongs_to :idea , dependent: :destroy
end
