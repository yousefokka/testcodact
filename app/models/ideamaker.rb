class Ideamaker < ApplicationRecord
    belongs_to :user, optional: true
    has_many :ideas
    has_many :jobs
    has_many :jobs, through: :submittings

    validates_presence_of :name, :addree, :Gander, :qualifiction, :mobile, :interstingfield, :ideamakerBio, :Website, :size, :ownernaem , :ownerphono ,:owneraddress ,:companyemail
end
